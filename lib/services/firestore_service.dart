import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:university/models/user_model.dart';

class FirestoreService {
  FirestoreService({required this.uid});
  final String uid;

  final CollectionReference _userData =
      FirebaseFirestore.instance.collection('user');

  // Updates user data
  Future<void> updateUserData(UserData userData) async {
    final reference = _userData.doc(uid);
    await reference.set(userData.toMap());
  }

  Stream<UserData> userDataStream() {
    final reference = _userData.doc(uid);
    final snapshots = reference.snapshots();
    return snapshots.map((snapshot) =>
        UserData.fromMap(snapshot.data() as Map<String, dynamic>));
  }
}
