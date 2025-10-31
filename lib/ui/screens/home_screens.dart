import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sliderImages = [
      "assets/images/film1.jpg",
      "assets/images/film4.jpg",
      "assets/images/film6.jpg",
    ];

    final List<String> images = [
      "assets/images/film1.jpg",
      "assets/images/film2.jpg",
      "assets/images/film3.jpg",
      "assets/images/film4.jpg",
      "assets/images/film5.jpg",
      "assets/images/film6.jpg",
      "assets/images/film7.jpg",
      "assets/images/film8.jpg",
      "assets/images/film9.jpg",
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontFamily: 'Helvetica',
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // --- NOW PLAYING TITLE ---
                Container(
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: const Text(
                    "Now Playing",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                // --- CARD SWIPER (Now Playing) ---
                SizedBox(
                  height: 320,
                  child: CardSwiper(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    cardsCount: sliderImages.length,
                    numberOfCardsDisplayed: 3,
                    backCardOffset: const Offset(0, 40),
                    cardBuilder: (context, index, _, _) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              sliderImages[index],
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 16,
                              right: 16,
                              child: Text(
                                "Movie ${index + 1}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16),

                // --- SECTION 1: TRENDING ---
                _buildSection(title: "Trending", images: images.sublist(0, 3)),

                // --- SECTION 2: POPULAR ---
                _buildSection(title: "Popular", images: images.sublist(3, 6)),

                // --- SECTION 3: TOP RATED ---
                _buildSection(title: "Top Rated", images: images.sublist(6, 9)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required List<String> images}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header judul
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text("More", style: TextStyle(color: Colors.white)),
            ],
          ),

          const SizedBox(height: 8),

          // Grid 3 gambar per baris
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 0.7,
            children: List.generate(images.length, (index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
