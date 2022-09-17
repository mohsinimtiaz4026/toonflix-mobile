import 'package:flutter/material.dart';

class HomeItemDetails extends StatefulWidget {
  const HomeItemDetails({Key? key}) : super(key: key);

  @override
  State<HomeItemDetails> createState() => _HomeItemDetailsState();
}

class _HomeItemDetailsState extends State<HomeItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                "https://wallpaperaccess.com/full/2195019.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Avatar: The Way of Water',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_outline),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share),
                            ),
                          ],
                        ),
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
}
