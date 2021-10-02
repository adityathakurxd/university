import 'package:flutter/material.dart';
import 'package:university/screens/mentor/mentor_screen.dart';
import 'package:university/screens/home/home_screen.dart';
import 'package:university/screens/mentor/widgets/mentor_preview_widget.dart';
import 'package:university/screens/mentor/widgets/mentor_widget_extended.dart';
import 'package:university/screens/pathway/pathway_screen.dart';
import 'package:university/services/firebase_auth_service.dart';
import 'package:university/screens/bottom_navigation.dart';

// List of Screens to be Shown
List<Widget> screens = <Widget>[
  HomeScreen(),
  MentorScreen(),
];

void main() {
  runApp(const MyApp());
}

// Also converted MyApp to stateful widget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // For the functionality of the NavBar
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
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
