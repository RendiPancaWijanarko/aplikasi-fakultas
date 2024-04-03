import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dosen.dart';

class ProgramStudyDetail extends StatelessWidget {
  const ProgramStudyDetail({Key? key});

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Detail Prodi - ${programData['programName']}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              programData['programImage'] ?? '',
              fit: BoxFit.contain,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      programData['programName'],
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Terakreditasi ${programData['programAkreditasi']}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 4,
              child: Column(
                children: <Widget>[
                  const TabBar(
                    tabs: [
                      Tab(text: 'Visi & Misi'),
                      Tab(text: 'Dosen'),
                      Tab(text: 'Website'),
                      Tab(text: 'Prestasi'),
                    ],
                  ),
                  SizedBox(
                    height: 320,
                    child: TabBarView(
                      children: [
                        _buildVisionMissionTab(programData),
                        _buildLecturersTab(programData),
                        _buildWebsiteTab(programData),
                        _buildAchievementsTab(programData),
                      ],
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

  Widget _buildVisionMissionTab(Map<String, dynamic> programData) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: const Text('Visi'),
          subtitle: Text(programData['programVisi']),
        ),
        ListTile(
          title: const Text('Misi'),
          subtitle: Text(programData['programMisi']),
        ),
      ],
    );
  }

  Widget _buildLecturersTab(Map<String, dynamic> programData) {
    List<Map<String, String>> lecturers =
        lecturersData[programData['programName']] ?? [];

    return ListView.builder(
      itemCount: lecturers.length,
      itemBuilder: (context, index) {
        final lecturer = lecturers[index];
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    lecturer['photo']!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        lecturer['role']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        lecturer['name']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildWebsiteTab(Map<String, dynamic> programData) {
    String programWebsite = programData['programWebsite'] ?? '';

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () {
            launchURL(programWebsite);
          },
          child: Text(
            programWebsite,
            style: const TextStyle(
              fontSize: 16,
              decoration: TextDecoration.underline,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAchievementsTab(Map<String, dynamic> programData) {
    // Mendapatkan data prestasi dari programData
    String achievementTitle = programData['programPrestasiTitle'] ?? 'Prestasi';
    String achievementText = programData['programPrestasiText'] ??
        'Terus gali potensi dirimu dan kembangkan sampai foto dan namamu muncul di sini!';
    String achievementImage = programData['programPrestasiImage'] ?? '';

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                achievementTitle,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                achievementText,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            if (achievementImage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(
                  child: Image.asset(
                    achievementImage,
                    fit: BoxFit.contain,
                    width: 200,
                  ),
                ),
              ),
            const Text(
              'Detail prestasi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              programData['programPrestasi'] ?? '',
              textAlign: TextAlign.center,
            ),
            // const Text(
            //   'Mahasiswa yang terlibat:',
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   programData['programPrestasiMahasiswa'] ?? '',
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
