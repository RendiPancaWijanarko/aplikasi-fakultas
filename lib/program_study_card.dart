import 'package:flutter/material.dart';

class ProgramStudyCard extends StatelessWidget {
  final String programName;
  final String programDescription;
  final int numberOfStudents;
  final String programLogo;
  final String programWebsite;
  final String programVisi;
  final String programMisi;
  final String programAkreditasi;
  final String programKetua;
  final String programDosen;
  final String programPrestasi;

  ProgramStudyCard({
    required this.programName,
    required this.programDescription,
    required this.numberOfStudents,
    required this.programLogo,
    required this.programWebsite,
    required this.programVisi,
    required this.programMisi,
    required this.programAkreditasi,
    required this.programKetua,
    required this.programDosen,
    required this.programPrestasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8.0,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/program_studi_detail',
              arguments: {
                'programName': programName,
                'programDescription': programDescription,
                'numberOfStudents': numberOfStudents,
                'programLogo': programLogo,
                'programWebsite': programWebsite,
                'programVisi': programVisi,
                'programMisi': programMisi,
                'programAkreditasi': programAkreditasi,
                'programKetua': programKetua,
                'programDosen': programDosen,
                'programPrestasi': programPrestasi,
              },
            );
          },
          child: Card(
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
                          'Jumlah Mahasiswa: $numberOfStudents',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
