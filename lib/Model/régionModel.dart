class region {
  String? nom;
  String? rue;
  String? code_postal;

  region({
    this.nom,
    this.rue,
    this.code_postal,
  });
  // receiving data form server
  factory region.formMap(map) {
    return region(
      nom: map['nom'],
      rue: map['rue'],
      code_postal: map['code_postal'],
    );
  }
  // sending data to sur server
  Map<String, dynamic> toMap() {
    return {
      'nom': nom,
      'rue': rue,
      'code_postal': code_postal,
    };
  }
}
