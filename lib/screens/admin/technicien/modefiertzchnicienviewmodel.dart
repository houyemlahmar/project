import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login/Model/region_model.dart';
import 'package:login/Model/technicien_model.dart';

import 'package:stacked/stacked.dart';

class modefiertechnicienviewmodel extends BaseViewModel {
  RegionModel? selectedRegion;

  Stream<List<RegionModel>> getRegions() {
    final collection =
        FirebaseFirestore.instance.collection('regions').snapshots();

    return collection.map((QuerySnapshot snapshots) {
      return snapshots.docs
          .map((e) => RegionModel.fromDocument(e)..copyWith(id_region: e.id))
          .toList();
    });
  }

  setSelectedRegion(RegionModel? region) {
    selectedRegion = region;
    notifyListeners();
  }

  updateRegion(String? techId) {
    final doc = FirebaseFirestore.instance.collection('Technicien').doc(techId);

    doc.update({
      "id_region": selectedRegion?.id_region,
      "region": selectedRegion?.nom
    });
  }
}
