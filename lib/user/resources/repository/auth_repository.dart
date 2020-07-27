import 'package:app_trips/user/resources/repository/firebase_auth_api.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuthAPI();

  Future<FirebaseUser> signInFirebase() => _firebaseAuth.sigin();

  void signOutFirebase() => _firebaseAuth.signout();
}
