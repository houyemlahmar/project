class user {
  final String name;
  final String prenom;
  final String zone;

  const user({required this.name, required this.prenom, required this.zone});

  // ignore: non_constant_identifier_names
  user Copy({
    String? name,
    String? prenom,
    String? zone,
  }) =>
      user(
          name: name ?? this.name,
          prenom: prenom ?? this.prenom,
          zone: zone ?? this.zone);

  // sending data to sur server

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is user &&
          name == other.name &&
          prenom == other.prenom &&
          zone == other.zone;

  @override
  int get hashCode => name.hashCode ^ prenom.hashCode ^ zone.hashCode;
}
