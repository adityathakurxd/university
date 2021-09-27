import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirestoreService({required this.uid});
  final String uid;

  // // Sets the avatar download url
  // Future<void> setUserData(UserData userData) async {
  //   final path = FirestorePath.avatar(uid);
  //   final reference = FirebaseFirestore.instance.doc(path);
  //   await reference.set(userData.toMap());
  // }
  //
  // // Reads the current avatar download url
  // Stream<UserData> userDataStream() {
  //   final path = FirestorePath.avatar(uid);
  //   final reference = FirebaseFirestore.instance.doc(path);
  //   final snapshots = reference.snapshots();
  //   return snapshots.map((snapshot) => userData.fromMap(snapshot.data()));
  // }
}