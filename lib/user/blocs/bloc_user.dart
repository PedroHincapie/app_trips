import 'package:app_trips/user/resources/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class BlocUser implements Bloc {
  final _authRepository = AuthRepository();
  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;

  Stream<FirebaseUser> get authStatus => streamFirebase;

  //Casos de usuos

  Future<FirebaseUser> signIn() => _authRepository.signInFirebase();

  void signOut() => _authRepository.signOutFirebase();

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
