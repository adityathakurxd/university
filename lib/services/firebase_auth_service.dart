import 'package:firebase_auth/firebase_auth.dart';
import 'package:university/models/user_model.dart';

class FirebaseAuthService {
  final _firebaseAuth = FirebaseAuth.instance;

  UserData _userFromFirebase (User? user){
    return UserData(uid: user!.uid);
  }

  Stream<UserData?> get onAuthStateChanged {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<UserData> signInAnonymously() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }
}