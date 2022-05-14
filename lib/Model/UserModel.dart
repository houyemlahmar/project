class Users {
  String? email;
  String? firstname;
  String? secondname;
  String? CIN;
  String? phonenumber;
  Users(
      {this.email,
      this.firstname,
      this.secondname,
      this.CIN,
      this.phonenumber});
  // receiving data form server
  factory Users.formMap(map) {
    return Users(
      email: map['email'],
      firstname: map['firstname'],
      secondname: map['secondname'],
      CIN: map[11111111],
      phonenumber: map[22222222],
    );
  }
  // sending data to sur server
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'firstname': firstname,
      'secondname': secondname,
      'CIN': CIN,
      'phonenumber': phonenumber,
    };
  }
}
