import 'package:flutter/material.dart';

import 'explore_roadmaps.dart';
import 'mentors.dart';

class CustomContainers extends StatelessWidget {
  const CustomContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        ExploreRoadmaps(),
        SizedBox(height: 20.0,),
        Mentors()
      ],
    );
  }
}
