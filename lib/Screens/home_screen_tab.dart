import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/cartoon_tab_screen/cartoon_tab_screen.dart';
import 'package:toonflix_app/Screens/home_tab_screen/home_screen.dart';
import 'package:toonflix_app/Screens/kids_tab_screen/kids_tab_screen.dart';
import 'package:toonflix_app/Screens/movie_tab_screen/movie_tab_screen.dart';

class HomeScreenTab extends StatefulWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  State<HomeScreenTab> createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends State<HomeScreenTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: const TabBar(
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.red,
              isScrollable: true,
              labelColor: Colors.red,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Movies'),
                Tab(text: 'Cartoons'),
                Tab(text: 'Kids'),
              ],
            ),
            title: const Text(
              'Toonflix',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Switch(
                value: false,
                onChanged: (newVal) {},
              ),
            ],
            automaticallyImplyLeading: false,
          ),
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeTabScreen(),
              MovieTabScreen(),
              CartoonTabScreen(),
              KidsTabScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
