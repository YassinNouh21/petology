import 'package:petology/domain/auth/model/user_model.dart';

abstract class AuthServiceInterface {
  Future<void> signInWithEmailAndPassword(User user);
  Future<void> createUserWithEmailAndPassword(User user);
  Future<void> currentUser();
  Future<void> loginWithFacebook();
  Future<void> loginWithGoogle();
}
