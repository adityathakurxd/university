import 'package:flutter/material.dart';
import 'package:university/screens/auth/sign_in_screen.dart';
import 'package:university/screens/mentor/mentor_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MentorScreen(),
    );
    // return FutureBuilder(
    //   future: Firebase.initializeApp(),
    //   builder: (context, snapshot) {
    //     // Check for errors
    //     if (snapshot.hasError) {
    //       return Center(child: Text('Error Occurred'));
    //     }
    //     // Once complete, show your application
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return MultiProvider(
    //         providers: [
    //           Provider<FirebaseAuthService>(
    //             create: (_) => FirebaseAuthService(),
    //           ),
    //         ],
    //         child: AuthWidgetBuilder(builder: (context, userSnapshot) {
    //           return MaterialApp(
    //             home: AuthWidget(userSnapshot: userSnapshot),
    //           );
    //         }),
    //       );
    //     }
    //     // Otherwise, show something whilst waiting for initialization to complete
    //     return Center(child: const CircularProgressIndicator());
    //   },
    // );
  }
}
