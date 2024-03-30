import 'package:flutter/material.dart';
import 'program_study_card.dart';

class ProgramStudyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProgramStudyCard(
          programName: 'Kewirausahaan',
          programDescription:
              'Learn about algorithms and software development.',
          numberOfStudents: 120,
          programLogo: 'assets/images/logo_prodi/Akuntansi.png',
          programWebsite: 'https://example.com/computer_science',
        ),
        ProgramStudyCard(
          programName: 'Akuntansi',
          programDescription: 'Study circuits, electronics, and power systems.',
          numberOfStudents: 90,
          programLogo: 'assets/images/logo_prodi/Ekonomi Pembangunan.png',
          programWebsite: 'https://example.com/electrical_engineering',
        ),
        ProgramStudyCard(
          programName: 'Ekonomi Pembangunan',
          programDescription: 'Explore mechanics, materials, and design.',
          numberOfStudents: 80,
          programLogo: 'assets/images/logo_prodi/Kewirausahaan.png',
          programWebsite: 'https://example.com/mechanical_engineering',
        ),
        ProgramStudyCard(
          programName: 'Manajemen',
          programDescription: 'Learn about management, finance, and marketing.',
          numberOfStudents: 150,
          programLogo: 'assets/images/logo_prodi/Manajemen.png',
          programWebsite: 'https://example.com/business_administration',
        ),
      ],
    );
  }
}
