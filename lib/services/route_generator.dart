import 'package:flutter/material.dart';
import 'package:university/screens/auth/sign_in_screen.dart';
import 'package:university/screens/error_screen.dart';
import 'package:university/screens/home/home_screen.dart';
import 'package:university/screens/mentor/mentor_screen.dart';
import 'package:university/screens/pathway/pathway_screen.dart';
import 'package:university/screens/profile/profile_screen.dart';
import 'package:university/screens/roadmap_form/roadmap_form.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    final args = settings.arguments;

    switch(settings.name) {
      case '/': return MaterialPageRoute(builder: (_)=> SignInScreen());
      case '/home': return MaterialPageRoute(builder: (_)=>HomeScreen());
      case '/mentor': return MaterialPageRoute(builder: (_)=>MentorScreen());
      case '/pathway': return MaterialPageRoute(builder: (_)=> PathwayScreen());
      case '/roadmap': return MaterialPageRoute(builder: (_)=> RoadmapDetailsForm());
      case '/profile':
        List<dynamic> details = args as List<dynamic>;
        return MaterialPageRoute(builder: (_)=> ProfilePage(
            name: details[0],
            isMentor: details[1],
            imgUrl: details[2],
            email: details[3],
        ));
      default: return MaterialPageRoute(builder: (_)=> ErrorScreen());
    }
  }
}