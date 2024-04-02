import 'package:flutter/material.dart';
import 'program_study_card.dart';
import 'data_program_studi.dart';

class ProgramStudyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: programStudiData.length,
      itemBuilder: (context, index) {
        return ProgramStudyCard(
          programName: programStudiData[index]['programName'],
          programDescription: programStudiData[index]['programDescription'],
          numberOfStudents: programStudiData[index]['numberOfStudents'],
          programLogo: programStudiData[index]['programLogo'],
          programWebsite: programStudiData[index]['programWebsite'],
          programVisi: programStudiData[index]['programVisi'],
          programMisi: programStudiData[index]['programMisi'],
          programAkreditasi: programStudiData[index]['programAkreditasi'],
          programKetua: programStudiData[index]['programKetua'],
          programDosen: programStudiData[index]['programDosen'],
          programPrestasi: programStudiData[index]['programPrestasi'],
        );
      },
    );
  }
}
