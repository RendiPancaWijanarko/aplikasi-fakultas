import 'package:flutter/material.dart';

class ProgramStudyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? programData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (programData == null) {
      // Jika programData null, tampilkan pesan kesalahan atau kembali ke halaman sebelumnya
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Data program studi tidak tersedia'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Program Studi'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Informasi tambahan
          const Text(
            'Profil',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          Text('Visi: ${programData['programVisi'] ?? 'Tidak tersedia'}'),
          const SizedBox(height: 8),
          Text('Misi: ${programData['programMisi'] ?? 'Tidak tersedia'}'),
          const SizedBox(height: 8),
          Text(
              'Akreditasi: ${programData['programAkreditasi'] ?? 'Tidak tersedia'}'),
          const SizedBox(height: 8),
          Text(
              'Ketua Program Studi: ${programData['programKetua'] ?? 'Tidak tersedia'}'),
          const SizedBox(height: 8),
          Text('Dosen: ${programData['programDosen'] ?? 'Tidak tersedia'}'),
          const SizedBox(height: 8),
          Text(
              'Laman Website Resmi: ${programData['programWebsite'] ?? 'Tidak tersedia'}'),
          const SizedBox(height: 8),
          Text(
              'Prestasi Mahasiswa: ${programData['programPrestasi'] ?? 'Tidak tersedia'}'),
          const SizedBox(height: 16),

          // Informasi dasar
          Text(
            'Program Studi: ${programData['programName']}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16.0),
          Image.network(
            programData['programLogo'] ?? '',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16.0),
          Text(
            programData['programDescription'] ?? 'Tidak tersedia',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Jumlah Mahasiswa: ${programData['numberOfStudents'] ?? 'Tidak tersedia'}',
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
