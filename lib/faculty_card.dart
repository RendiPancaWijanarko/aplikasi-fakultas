import 'package:flutter/material.dart';

class FacultyCard extends StatelessWidget {
  final String facultyName;
  final String facultyLogo;
  final String facultyWebsite;

  FacultyCard(
      {required this.facultyName,
      required this.facultyLogo,
      required this.facultyWebsite});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(facultyLogo),
        title: Text(facultyName),
        onTap: () {
          // Open faculty website
          // Use launchURL function to open the website
        },
      ),
    );
  }
}
