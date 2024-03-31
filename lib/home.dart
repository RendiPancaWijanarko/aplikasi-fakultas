import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:core'; // Import untuk TimeOfDay

class Home extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/images/carousel/caraousel_img1.png',
    'assets/images/carousel/caraousel_img2.png',
    'assets/images/carousel/caraousel_img3.png',
    'assets/images/carousel/caraousel_img4.png',
  ];

  final List<String> carouselDescriptions = [
    'Kegiatan ANGKASA',
    'EBGC 2023 6th Economics, Business, And Government Challenges International Conference “Epicentrum Of Growth : Sustainability Economic Development In Asean Countries “',
    'Visiting Professor Program - Uni KL',
    'Peresmian Pojok Statistik',
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
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 9 / 16,
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
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Stack(
                          children: [
                            Image.asset(
                              imageUrl,
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                            Positioned(
                              bottom: 10.0,
                              left: 10.0,
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  carouselDescriptions[index],
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
