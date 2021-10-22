import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:university/constants/constants.dart';
import 'package:university/models/user_model.dart';
import 'package:university/services/firebase_auth_service.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  final bool isMentor;
  final String name;
  final String imgUrl;
  final String email;
  const ProfilePage({
    Key? key,
    required this.name,
    required this.isMentor,
    required this.imgUrl,
    required this.email,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context, listen: false);
    final mentorData; //TODO: get user data like social links from backend - define mentor model
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: kWhite,
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.isMentor
                          ? widget.name + "'s Profile"
                          : "My Profile",
                      style: kLightTitleText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          widget.isMentor
              ? Text("")
              : TextButton(
                  onPressed: () {
                    showLogoutAlert(context);
                  },
                  child: Text(
                    "LOGOUT",
                    style: kLogoutText,
                  ),
                ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            height: 600,
            left: 0,
            right: 0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        Text(
                          widget.isMentor
                              ? widget.name
                              : (userData.name == '')
                                  ? 'Anonymous'
                                  : userData.name,
                          style: kTitleText,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          widget.isMentor
                              ? widget.email
                              : (userData.email == '')
                                  ? "Email not provided"
                                  : userData.email,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        widget.isMentor
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 30,
                                    icon: const FaIcon(
                                      FontAwesomeIcons.instagram,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                    onPressed: () {
                                      launch("mentorData.instaLink");
                                    },
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    icon: const FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      launch('mentorData.linkedinLink');
                                    },
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    icon: const FaIcon(
                                      FontAwesomeIcons.youtube,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      launch('mentorData.youtubeLink');
                                    },
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    icon: const FaIcon(
                                      FontAwesomeIcons.twitter,
                                      color: Colors.blueAccent,
                                    ),
                                    onPressed: () {
                                      launch('mentorData.twitterLink');
                                    },
                                  ),
                                ],
                              )
                            : Row(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Column(
                            children: [
                              Text(
                                "My Roadmaps",
                                style: kLightTitleText,
                              ),
                              const Divider(
                                color: Colors.black,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                    itemCount: 42,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text(index.toString()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: (MediaQuery.of(context).size.width * 0.5 - 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                widget.isMentor
                    ? widget.imgUrl
                    : (userData.imgurl == '')
                        ? "https://freesvg.org/img/user-spy.png"
                        : userData.imgurl,
                width: MediaQuery.of(context).size.width * 0.25,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  showLogoutAlert(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: const Text(
        "Logout",
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      onPressed: () async {
        final auth = Provider.of<FirebaseAuthService>(context, listen: false);
        await auth.signOut();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Confirm"),
      content: Text("Are you sure you want to logout?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
