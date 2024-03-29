import 'package:flutter/material.dart';

class ProgramStudyCard extends StatelessWidget {
  final String programName;
  final String programDescription;
  final int numberOfStudents;
  final String programLogo;
  final String programWebsite;

  ProgramStudyCard({
    required this.programName,
    required this.programDescription,
    required this.numberOfStudents,
    required this.programLogo,
    required this.programWebsite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              programLogo,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    programName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(programDescription),
                  SizedBox(height: 5),
                  Text(
                    'Number of Students: $numberOfStudents',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Program Study Cards'),
      ),
      body: ProgramStudyList(),
    ),
  ));
}

class ProgramStudyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProgramStudyCard(
          programName: 'Computer Science',
          programDescription:
              'Learn about algorithms and software development.',
          numberOfStudents: 120,
          programLogo: 'https://example.com/computer_science_logo.png',
          programWebsite: 'https://example.com/computer_science',
        ),
        ProgramStudyCard(
          programName: 'Electrical Engineering',
          programDescription: 'Study circuits, electronics, and power systems.',
          numberOfStudents: 90,
          programLogo: 'https://example.com/electrical_engineering_logo.png',
          programWebsite: 'https://example.com/electrical_engineering',
        ),
        ProgramStudyCard(
          programName: 'Mechanical Engineering',
          programDescription: 'Explore mechanics, materials, and design.',
          numberOfStudents: 80,
          programLogo: 'https://example.com/mechanical_engineering_logo.png',
          programWebsite: 'https://example.com/mechanical_engineering',
        ),
        ProgramStudyCard(
          programName: 'Business Administration',
          programDescription: 'Learn about management, finance, and marketing.',
          numberOfStudents: 150,
          programLogo: 'https://example.com/business_administration_logo.png',
          programWebsite: 'https://example.com/business_administration',
        ),
        ProgramStudyCard(
          programName: 'Psychology',
          programDescription: 'Study human behavior and mental processes.',
          numberOfStudents: 100,
          programLogo: 'https://example.com/psychology_logo.png',
          programWebsite: 'https://example.com/psychology',
        ),
      ],
    );
  }
}
