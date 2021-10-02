import 'dart:ui';

import 'package:flutter/material.dart';

import 'widgets/mentor_preview_widget.dart';
import 'widgets/mentor_widget_extended.dart';

class MentorScreen extends StatelessWidget {
  const MentorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff787A91),
        title: const Text(
          'Mentor',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        color: const Color(0xff787A91).withOpacity(0.2),
        child: Column(
          children: const [
            Spacer(),
            MentorWidget(),
            Spacer(),
            MentorWidgetExtended(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
