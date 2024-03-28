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
      child: ListTile(
        leading: Image.network(programLogo),
        title: Text(programName),
        subtitle:
            Text('$programDescription\nNumber of Students: $numberOfStudents'),
        onTap: () {
          // Open program study website
          // Use launchURL function to open the website
        },
      ),
    );
  }
}
