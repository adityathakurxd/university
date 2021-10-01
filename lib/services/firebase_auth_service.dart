import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:university/models/user_model.dart';

class FirebaseAuthService {
  final _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  //TODO: Use a default image and name if user decides to sign in anonymously
  UserData _userFromFirebase(User? user) {
    return UserData(
        uid: user!.uid,
        name: user.displayName ?? 'Anonymous',
        email: user.email ?? '',
        imgurl: user.photoURL ?? '');
  }

  Stream<UserData?> get onAuthStateChanged {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<UserData> signInAnonymously() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }

  Future<UserData> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final authResult = await _firebaseAuth.signInWithCredential(credential);
    return _userFromFirebase(authResult.user);
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    return _firebaseAuth.signOut();
  }
}