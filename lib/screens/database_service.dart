import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<String?> addUser({
    required String firstname,
    required String secondname,
    required String email,
  }) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('Users');
      // Call the user's CollectionReference to add a new user
      await users.doc(email).set({
        'first name': firstname,
        'second name': secondname,
      });
      return 'success';
    } catch (e) {
      return 'Error adding user';
    }
  }

  Future<String?> getUser(String email) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      final snapshot = await users.doc(email).get();
      final data = snapshot.data() as Map<String, dynamic>;
      return data['first name' 'second name'];
    } catch (e) {
      return 'Error fetching user';
    }
  }
}
