import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';

import 'widgets/mentor_preview_widget.dart';
import 'widgets/mentor_widget_extended.dart';

class MentorScreen extends StatelessWidget {
  const MentorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
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
