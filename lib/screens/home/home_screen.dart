import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:university/screens/home/widgets/explore_roadmaps.dart';
import 'package:university/screens/home/widgets/mentors.dart';
import 'package:university/screens/mentor/widgets/explore_pathway.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ExploreRoadmaps(),
          SizedBox(
            height: 20.0,
          ),
          Mentors(),
          ExplorePathWay(),
        ],
      ),
    );
  }
}
