class UserData {
  String uid;
  String name;
  String email;
  String imgurl;

  UserData({
    required this.uid,
    required this.name,
    required this.email,
    required this.imgurl,
  });

  factory UserData.fromMap(Map<String, dynamic> data) {
    final uid = data['uid'] as String;
    final name = data['name'] as String;
    final email = data['email'] as String;
    final imgurl = data['imgurl'] as String;

    return UserData(
      uid: uid,
      name: name,
      email: email,
      imgurl: imgurl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'imgurl': imgurl,
    };
  }
}