import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: Colors.blueGrey,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Programming Languages Section
            Text(
              'Programming Languages',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Python',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- Java',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- C++',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '- SQL',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            Text(
              'Version Control',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Git/GitHub',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            Text(
              'Mobile App Development',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '- Flutter/Dart',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}