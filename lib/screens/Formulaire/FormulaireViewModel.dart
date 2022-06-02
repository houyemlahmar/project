import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/boite_model.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/region_model.dart';
import 'package:login/Model/rue_model.dart';
import 'package:stacked/stacked.dart';

class FormulaireViewModel extends BaseViewModel {
  RegionModel? selectedRegion;
  RueModel? selectedRue;
  String selectedAdresse = 'Rue Tataouin';
  String selectedOffer = 'WAFFI';
  String selectedDebit = '8';


  static const adresses = <String>['Rue Tataouin', 'Rue Soudan'];
  static const offers = <String>[
    'WAFFI',
    'ADSL',
    'VDSL',
    'Gros XDSL',
  ];
  static const debits = <String>[
    '8',
    '10',
    '12',
    '20',
    '100',
  ];

  setSelectedOffer(String offers) {
    selectedOffer = offers;
    notifyListeners();
  }

  setSelectedRegion(RegionModel? region) {
    selectedRegion = region;
    getRues();
    notifyListeners();
  }

  setSelectedRue(RueModel? rue) {
    selectedRue = rue;
    notifyListeners();
  }

  setSelectedDebit(String debits) {
    selectedDebit = debits;
    notifyListeners();
  }

  setSelectedAdresse(String adresses) {
    selectedAdresse = adresses;
    notifyListeners();
  }

  createDemande() async {
    var demande = ConstructionModel(
        debit: int.parse(selectedDebit),
        offre: selectedOffer,
        id_region: selectedRegion?.id_region,
        id_rue: selectedAdresse,
        userId: FirebaseAuth.instance.currentUser?.uid,
        reference: FirebaseAuth.instance.currentUser?.uid,
        createdAt: DateTime.now());
    final collection =
        FirebaseFirestore.instance.collection('construction').doc();
    final boites = await getBoite("idrue", "idregion");
    final validboite = boites.firstWhere(
        (element) => element.nbr_used < element.nbr_max, orElse: (() {
      demande.etatDemande = "Accepté";
      return BoiteModel(nbr_max: -1, nbr_used: -1);
    }));
    if (validboite.nbr_max != -1) {
      demande.etatDemande = "En attente";
      demande.id_boite = validboite.id_boite;
      updateBoite(validboite.id_boite, validboite.nbr_used);
    }

    collection.set(demande.toJson());
  }

  Future<List<BoiteModel>> getBoite(String idrue, String idregion) async {
    final collection = await FirebaseFirestore.instance
        .collection('Boite')
        .where("id_rue", isEqualTo: idrue)
        .where("id_region", isEqualTo: idregion)
        .get();

    return collection.docs.map((e) => BoiteModel.fromDocument(e)).toList();
  }

  updateBoite(String? idBoite, int used) {
    final doc = FirebaseFirestore.instance.collection('Boite').doc(idBoite);
    doc.update({"nbr_used": used + 1});
  }

  Stream<List<RegionModel>> getRegions() {
    final collection =
        FirebaseFirestore.instance.collection('regions').snapshots();

    return collection.map((QuerySnapshot snapshots) {
      return snapshots.docs.map((e) => RegionModel.fromDocument(e)).toList();
    });
  }

  Stream<List<RueModel>> rues = Stream.empty();
  getRues() {
    final collection = selectedRegion == null
        ? FirebaseFirestore.instance.collection('rues').snapshots()
        : FirebaseFirestore.instance
            .collection('rues')
            .where("id_region", isEqualTo: selectedRegion?.id_region)
            .snapshots();

    rues = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs.map((e) => RueModel.fromDocument(e)).toList();
    });
  }
}
