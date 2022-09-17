import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/sign_in_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  List<Map<String, String>> onBoardingData = [
    {
      "image": "assets/images/1.png",
      "text": "Unlimited Cartoons,\n Anime Series & more.",
      "desc": "Watch anywhere. Cancel anything",
    },
    {
      "image": "assets/images/2.png",
      "text": "Download and\n watch offline",
      "desc": "Always have something to watch offline.",
    },
    {
      "image": "assets/images/3.png",
      "text": "No Pesky\n Contracts",
      "desc": "Join today, Cancel anything.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) {
                  return OnBoardingContent(
                    image: onBoardingData[index]["image"] ?? "",
                    text: onBoardingData[index]["text"] ?? "",
                    desc: onBoardingData[index]["desc"] ?? "",
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignInScreen()));
                            },
                            child: const Text('Skip'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignInScreen()));
                            },
                            child: const Text('Get Started'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 3),
      margin: const EdgeInsets.only(right: 5),
      width: currentPage == index ? 25 : 10,
      height: 10,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.red : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.image,
    required this.text,
    required this.desc,
  }) : super(key: key);

  final String text, image, desc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Spacer(),
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              desc,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
