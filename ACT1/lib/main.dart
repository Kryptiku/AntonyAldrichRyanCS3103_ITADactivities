import 'package:cv/pages/login.dart';
import 'package:cv/pages/skills.dart';
import 'package:flutter/material.dart';
import 'package:cv/pages/home.dart';
import 'package:cv/pages/education.dart';
import 'package:cv/pages/projects.dart';
import 'package:cv/pages/experience.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/home': (context) => const MyCVPage(),
      '/education': (context) => const EducationPage(),
      '/skills': (context) => const SkillsPage(),
      '/projects': (context) => const ProjectsPage(),
      '/experience': (context) => const ExperiencePage(),
      '/login': (context) => LoginPage(),
    },
  ));
}


