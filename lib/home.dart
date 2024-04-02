import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/carousel/caraousel_img1.png',
    'assets/images/carousel/caraousel_img2.png',
    'assets/images/carousel/caraousel_img3.png',
  ];

  final List<Map<String, dynamic>> news = [
    {
      'title': 'FEB Berkomitmen SDGs',
      'image': 'assets/images/berita_terkini/berita1.png',
      'description': 'Badan Eksekutif Mahasiswa Fakultas Ekonomi dan Bisn...',
      'date': '4 Apr 2024',
      'author': 'Rendi Panca',
      'readingTime': '5 menit',
    },
    {
      'title': 'Program Rekognisi Lampau',
      'image': 'assets/images/berita_terkini/berita2.png',
      'description': 'Program Rekognisi Pembelajaran Lampau (RPL) ad...',
      'date': '4 Apr 2024',
      'author': 'Rendi Panca',
      'readingTime': '3 menit',
    },
    {
      'title': 'Workshop Lab FEB',
      'image': 'assets/images/berita_terkini/berita3.png',
      'description': 'Dalam rangka pengembangan Laboratorium di Faku...',
      'date': '6 Apr 2024',
      'author': 'Rendi Panca',
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
                const SizedBox(height: 8.0),
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
                                decoration: const InputDecoration(
                                  hintText: 'Cari...',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Tambahkan fungsi untuk aksi pencarian di sini
                              },
                              icon: const Icon(Icons.search),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Tambahkan fungsi untuk aksi filter di sini
                          },
                          icon: const Icon(
                            Icons.filter_list,
                            color: Colors
                                .orange, // Ubah warna ikon filter menjadi oranye
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kegiatan Fakultas',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Ikuti Perkembangan Kegiatan Fakultas FEB',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 24.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                  ),
                  items: carouselImages.map((imageUrl) {
                    carouselImages.indexOf(imageUrl);
                    return Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 8.0,
                              left: 8.0,
                              child: Text(
                                imageUrl == carouselImages.first
                                    ? 'Kegiatan Fakultas'
                                    : '',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Berita Terkini',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Kabar akademik terkini di FEB',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: news.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 260,
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        news[index]['title'],
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4.0),
                                      Text(
                                        news[index]['description'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
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
                                          const Icon(
                                            Icons.date_range,
                                            color: Colors.orange,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            news[index]['date'],
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.access_time,
                                            color: Colors.orange,
                                          ),
                                          const SizedBox(width: 5.0),
                                          Text(
                                            news[index]['readingTime'],
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.orange,
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
        ],
      ),
    );
  }
}
