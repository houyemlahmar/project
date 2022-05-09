class Users {
  String? uid;
  String? email;
  String? firstname;
  String? secondname;
  String? CIN;
  String? phonenumber;
  Users(
      {this.uid,
      this.email,
      this.firstname,
      this.secondname,
      this.CIN,
      this.phonenumber});
  // receiving data form server
  factory Users.formMap(map) {
    return Users(
      uid: map['uid'],
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
      'uid': uid,
      'email': email,
      'firstname': firstname,
      'secondname': secondname,
      'CIN': CIN,
      'phonenumber': phonenumber,
    };
  }
}
