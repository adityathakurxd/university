import 'package:flutter/material.dart';
import 'package:university/widgets/custom_home_page_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar:AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CustomContainers(),
         const SizedBox(height: 15,),
          CustomContainers(),
        ],
      ),
    );

  }
  }


