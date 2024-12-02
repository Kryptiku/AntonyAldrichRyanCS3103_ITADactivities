import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        backgroundColor: Colors.blueGrey,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Elementary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'School: Mary Belle Montessori School ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Year Graduated: 2015',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Secondary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'School: Calamba Institute - Canlubang',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Year Graduated: 2021',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}