import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toonflix_app/Components/menu_desc.dart';
import 'package:toonflix_app/Screens/home_item_details.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  int activeIndex = 0;
  final controller = CarouselController();
  final carosuelImages = [
    "https://wallpaperaccess.com/full/1342284.jpg",
    "https://wallpaperaccess.com/full/2195024.jpg",
    "https://wallpaperaccess.com/full/2195019.jpg",
    "https://wallpaperaccess.com/full/1773336.jpg",
  ];
  List<Map<String, dynamic>> commonAssets = [
    {
      "image": "https://wallpaperaccess.com/full/1342284.jpg",
      "name": "Ben 10",
      "category": "Movie",
      "rating": "6.5",
    },
    {
      "image": "https://wallpaperaccess.com/full/2195024.jpg",
      "name": "Tom and Jerry",
      "category": "Cartoon",
      "rating": "9.2",
    },
    {
      "image": "https://wallpaperaccess.com/full/2195019.jpg",
      "name": "Luca",
      "category": "Cartoon",
      "rating": "7.2",
    },
    {
      "image": "https://wallpaperaccess.com/full/1773336.jpg",
      "name": "Chota Bheem",
      "category": "Kids",
      "rating": "9.8",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                  itemCount: carosuelImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final caroImages = carosuelImages[index];
                    return buildImage(caroImages, index);
                  },
                  carouselController: controller,
                  options: CarouselOptions(
                      height: 400,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      MenuDesc(
                        title: 'Latest Release',
                        text: 'View More',
                        onpress: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: CarouselSlider.builder(
                          itemCount: carosuelImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final caroImages = carosuelImages[index];
                            return buildImageMain(caroImages, index);
                          },
                          options: CarouselOptions(
                            height: 300,
                            enlargeCenterPage: true,
                          ),
                        ),
                      ),
                      MenuDesc(
                        title: 'Trending Now',
                        text: 'View More',
                        onpress: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30.0,
                        ),
                        child: CarouselSlider.builder(
                          itemCount: carosuelImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final caroImages = carosuelImages[index];
                            return buildImageTrending(caroImages, index);
                          },
                          options: CarouselOptions(
                            height: 200,
                          ),
                        ),
                      ),
                      MenuDesc(
                        title: 'Toonflix Special',
                        text: 'View More',
                        onpress: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: CarouselSlider.builder(
                          itemCount: carosuelImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final caroImages = carosuelImages[index];
                            return buildImageMain(caroImages, index);
                          },
                          options: CarouselOptions(
                            height: 300,
                            enlargeCenterPage: true,
                          ),
                        ),
                      ),
                      MenuDesc(
                        title: 'Most Watched',
                        text: 'View More',
                        onpress: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: CarouselSlider.builder(
                          itemCount: carosuelImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final caroImages = carosuelImages[index];
                            return buildImageWatched(caroImages, index);
                          },
                          options: CarouselOptions(
                            height: 300,
                          ),
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
    );
  }

  Widget buildImage(String caroImage, int index) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeItemDetails()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                caroImage,
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: buildIndicator(),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const HomeItemDetails()));
                },
                child: Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildImageMain(String caroImage, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0.0),
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const HomeItemDetails()));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            caroImage,
            fit: BoxFit.cover,
            height: 300,
          ),
        ),
      ),
    );
  }

  Widget buildImageTrending(String caroImage, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const HomeItemDetails()));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            caroImage,
            fit: BoxFit.cover,
            height: 200,
          ),
        ),
      ),
    );
  }

  Widget buildImageWatched(String caroImage, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const HomeItemDetails()));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            caroImage,
            fit: BoxFit.cover,
            height: 200,
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: carosuelImages.length,
      onDotClicked: (int index) {
        controller.animateToPage(index);
      },
      effect: const WormEffect(
        dotWidth: 15,
        dotHeight: 15,
        activeDotColor: Colors.red,
      ),
    );
  }
}
