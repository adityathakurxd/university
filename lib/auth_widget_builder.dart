import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:university/models/user_model.dart';
import 'package:university/services/firebase_auth_service.dart';

class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder({Key? key, required this.builder}) : super(key: key);
  final Widget Function(BuildContext, AsyncSnapshot<UserData?>) builder;

  @override
  Widget build(BuildContext context) {
    final authService =
    Provider.of<FirebaseAuthService>(context, listen: false);
    return StreamBuilder<UserData?>(
    stream: authService.onAuthStateChanged,
    builder: (context, snapshot) {
      final UserData? user = snapshot.data;
      if (user != null) {
        return MultiProvider(
          providers: [
            Provider<UserData>.value(value: user),
            // Provider<FirestoreService>(
            //   create: (_) => FirestoreService(uid: user.uid),
            // ),
          ],
          child: builder(context, snapshot),
        );
      }
      return builder(context, snapshot);
    },
    );
  }
}