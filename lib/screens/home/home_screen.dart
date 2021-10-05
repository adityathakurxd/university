import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:university/screens/home/widgets/custom_home_page_widgets.dart';
import 'package:university/screens/home/widgets/explore_roadmaps.dart';
import 'package:university/screens/home/widgets/mentors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kWhite,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CustomContainers(),
         SizedBox(height: 15,),
          CustomContainers(),
        ],
      ),
    );

  }
  }


