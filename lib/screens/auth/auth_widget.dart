import 'package:flutter/material.dart';
import 'package:university/models/user_model.dart';
import 'package:university/screens/auth/sign_in_screen.dart';
import 'package:university/screens/bottom_navigation.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key, required this.userSnapshot}) : super(key: key);
  final AsyncSnapshot<UserData?> userSnapshot;

  @override
  Widget build(BuildContext context) {
    if (userSnapshot.connectionState == ConnectionState.active) {
      return userSnapshot.hasData
          ? const BottomNavigation()
          : const SignInScreen();
    }
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
