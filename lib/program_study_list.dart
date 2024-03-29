import 'package:flutter/material.dart';
import 'program_study_card.dart';

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
