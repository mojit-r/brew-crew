import 'package:brew_crew/services/custom_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create CustomUser obj based on firebase User
  CustomUser? _customUserFromFirbaseUser(User? user) {
    return user != null
        ? CustomUser(uid: user.uid, isAnonymous: user.isAnonymous)
        : null;
  }

  // auth change user stream
  Stream<CustomUser?> get user {
    return _auth.authStateChanges().map(_customUserFromFirbaseUser);
  }

  // sign in anon
  Future<CustomUser?> signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _customUserFromFirbaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password

  // register with email & password

  // sign out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
