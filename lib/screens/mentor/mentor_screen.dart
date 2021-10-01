import 'package:flutter/material.dart';
import 'package:university/screens/mentor/mentor_widget_extended.dart';

class MentorScreen extends StatelessWidget {
  const MentorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [MentorWidgetExtended()],
      ),
    );
  }
}
