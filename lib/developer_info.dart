import 'package:flutter/material.dart';

class DeveloperInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developer Info'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildDeveloperProfile(
              name: 'Rendi Panca Wijanarko',
              description: '25 Februari 2003, Bekasi - Jawa Barat',
              phoneNumber: '+62 81515891136',
              email: 'rendi.wijanarko03@gmail.com',
              github: 'https://github.com/RendiPancaWijanarko',
              educationHistory: [
                '- S1 UPN "Veteran" Jawa Timur, 2021 hingga Sekarang',
                '- SMA Yadika 13 Tambun Utara, 2018 - 2021',
                '- SMP Santa Maria Monica Bekasi, 2015 - 2018',
                '- SDN Mangunjaya 05 Tambun Selatan, 2009 - 2015',
              ],
              awards: [
                '1. Best participant in the Studi Independen batch 5 at Gamelab Indonesia',
                '2. 3rd Winner of National Speech Contest – Universitas Negeri Jakarta',
                '3. 2nd Winner of Speech for Varsity – Universitas Negeri Medan',
                '4. 2nd Winner of National Speech Contest – Universitas Negeri Jakarta',
                '5. 1st Winner of Online Speech Competition – S&I Learning Center',
                '6. 3rd Winner of ESA Speech Contest – Universitas Nusantara PGRI Kediri',
                '7.2nd Winner of Speech University Category – Universitas Singaperbangsa Karawang',
              ],
              profileImage:
                  'assets/images/profil_developer/Rendi Panca Wijanarko.png',
            ),
            SizedBox(height: 40.0),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
            ),
            SizedBox(height: 40.0),
            _buildDeveloperProfile(
              name: 'John Doe',
              description: 'TTL, Alamat',
              phoneNumber: '+62 81234567890',
              email: 'email@domain.com',
              github: 'www.github.com/username',
              educationHistory: [
                '- S1, Universitas ABC, Tahun 2015-2019',
                '- SMA, SMA Negeri 2, Tahun 2011-2015',
              ],
              awards: ['- Penghargaan 1', '- Penghargaan 2'],
              profileImage: 'assets/images/profile_john.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeveloperProfile({
    required String name,
    required String description,
    required String phoneNumber,
    required String email,
    required String github,
    required List<String> educationHistory,
    required List<String> awards,
    required String profileImage,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50.0,
          backgroundColor: Colors.orange,
          backgroundImage: AssetImage(profileImage),
        ),
        SizedBox(height: 20.0),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20.0,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          description,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          width: 200.0,
          height: 1.0,
          color: Colors.grey,
        ),
        SizedBox(height: 20.0),
        _buildInfoRow(Icons.phone, phoneNumber),
        SizedBox(height: 10.0),
        _buildInfoRow(Icons.email, email),
        SizedBox(height: 10.0),
        _buildInfoRow(Icons.link, github),
        SizedBox(height: 20.0),
        Container(
          width: 200.0,
          height: 1.0,
          color: Colors.grey,
        ),
        SizedBox(height: 20.0),
        _buildSectionTitle('Riwayat Pendidikan'),
        SizedBox(height: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: educationHistory
              .map((item) => _buildSectionContent(item))
              .toList(),
        ),
        SizedBox(height: 20.0),
        Container(
          width: 200.0,
          height: 1.0,
          color: Colors.grey,
        ),
        SizedBox(height: 20.0),
        _buildSectionTitle('Penghargaan'),
        SizedBox(height: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: awards.map((item) => _buildSectionContent(item)).toList(),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.orange,
          size: 20.0,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20.0,
        color: Colors.orange,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16.0,
        color: Colors.grey,
      ),
    );
  }
}
