import 'package:flutter/material.dart';
import 'program_study_card.dart';

class ProgramStudyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProgramStudyCard(
          programName: 'Kewirausahaan',
          programDescription: 'Pengembangan bisnis dan inovasi.',
          numberOfStudents: 152,
          programLogo: 'assets/images/logo_prodi/Akuntansi.png',
          programWebsite: 'https://example.com/computer_science',
        ),
        ProgramStudyCard(
          programName: 'Akuntansi',
          programDescription: 'Pengelolaan keuangan dan pelaporan.',
          numberOfStudents: 1519,
          programLogo: 'assets/images/logo_prodi/Ekonomi Pembangunan.png',
          programWebsite: 'https://example.com/electrical_engineering',
        ),
        ProgramStudyCard(
          programName: 'Ekonomi Pembangunan',
          programDescription: 'Pertumbuhan ekonomi dan pembangunan masyarakat.',
          numberOfStudents: 794,
          programLogo: 'assets/images/logo_prodi/Kewirausahaan.png',
          programWebsite: 'https://example.com/mechanical_engineering',
        ),
        ProgramStudyCard(
          programName: 'Manajemen',
          programDescription: 'Pengelolaan organisasi dan sumber daya.',
          numberOfStudents: 2000,
          programLogo: 'assets/images/logo_prodi/Manajemen.png',
          programWebsite: 'https://example.com/business_administration',
        ),
      ],
    );
  }
}
