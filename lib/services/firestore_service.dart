import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  late final _users = FirebaseFirestore.instance.collection('users');

  Future<String> createUser(User user) async {
    final doc = await _users.doc(user.uid).get();
    if (!doc.exists) {
      _users
          .doc(user.uid)
          .set({"id": user.uid, "name": user.displayName, "email": user.email, "photoUrl": user.photoURL});
      return "User created";
    }
    return "User already exists";
  }
}
