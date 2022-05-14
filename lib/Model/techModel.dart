class tech {
  String? Nom;
  String? ID_RG;
  tech({this.Nom, this.ID_RG});
  // receiving data form server
  factory tech.formMap(map) {
    return tech(Nom: map['Nom'], ID_RG: map['ID_RG']);
  }
  // sending data to sur server
  Map<String, dynamic> toMap() {
    return {'Nom': Nom, 'ID_RG': ID_RG};
  }
}
