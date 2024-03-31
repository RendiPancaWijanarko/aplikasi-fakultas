import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:core';

class Home extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/carousel/caraousel_img1.png',
    'assets/images/carousel/caraousel_img2.png',
    'assets/images/carousel/caraousel_img3.png',
  ];

  final List<String> carouselDescriptions = [
    'Kegiatan ANGKASA',
    'EBGC 2023 6th Economics, Business, And Government Challenges International Conference “Epicentrum Of Growth : Sustainability Economic Development In Asean Countries “',
    'Visiting Professor Program - Uni KL',
  ];

  final List<Map<String, dynamic>> news = [
    {
      'title': 'Berita Pertama',
      'image': 'assets/images/berita_terkini/berita1.png',
      'date': '12 Jan 2023',
      'author': 'John Doe',
      'readingTime': '5 menit',
    },
    {
      'title': 'Berita Kedua',
      'image': 'assets/images/berita_terkini/berita2.png',
      'date': '10 Jan 2023',
      'author': 'Jane Smith',
      'readingTime': '3 menit',
    },
    {
      'title': 'Berita Ketiga',
      'image': 'assets/images/berita_terkini/berita3.png',
      'date': '8 Jan 2023',
      'author': 'Budi Santoso',
      'readingTime': '4 menit',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat ${TimeOfDay.now().hour > 12 ? 'Siang' : 'Pagi'},',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  'Rendi Panca Wijanarko',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                onChanged: (value) {
                                  // Tambahkan fungsi untuk aksi pencarian di sini
                                },
                                decoration: InputDecoration(
                                  hintText: 'Cari...',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Tambahkan fungsi untuk aksi pencarian di sini
                              },
                              icon: Icon(Icons.search),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Tambahkan fungsi untuk aksi filter di sini
                      },
                      icon: Icon(Icons.filter_list),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2.0),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
              ),
              items: carouselImages.map((imageUrl) {
                int index = carouselImages.indexOf(imageUrl);
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Berita Terkini',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: news.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300, // Ganti lebar sesuai kebutuhan
                      child: Card(
                        elevation: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      news[index]['image'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                news[index]['title'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                bottom: 8.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.date_range),
                                      SizedBox(width: 5.0),
                                      Text(
                                        news[index]['date'],
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.access_time),
                                      SizedBox(width: 5.0),
                                      Text(
                                        news[index]['readingTime'],
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
