import 'package:app_trips/user/resources/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class BlocUser implements Bloc {
  final _authRepository = AuthRepository();

  //Casos de usuos

  Future<FirebaseUser> signIn() => _authRepository.signInFirebase();

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
