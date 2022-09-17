import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toonflix_app/Screens/home_screen_tab.dart';
import 'package:toonflix_app/Screens/setting_screen_tab.dart';
import 'package:toonflix_app/Screens/download_screen_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool activeTab1 = false, activeTab2 = false, activeTab3 = false;
  late PageController pageController;
  void onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(
      _selectedIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutQuad,
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      _selectedIndex == 0 ? activeTab1 = true : activeTab1 = false;
      _selectedIndex == 1 ? activeTab2 = true : activeTab2 = false;
      _selectedIndex == 2 ? activeTab3 = true : activeTab3 = false;
    });

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeScreenTab(),
          DownloadScreenTab(),
          SettingsScreenTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              activeTab1
                  ? "assets/icons/house.svg"
                  : "assets/icons/house -2.svg",
              width: 30.0,
              height: 30.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              activeTab2
                  ? "assets/icons/download-active.svg"
                  : "assets/icons/download-2.svg",
              width: 30.0,
              height: 30.0,
            ),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              activeTab3
                  ? "assets/icons/user-active.svg"
                  : "assets/icons/user-1.svg",
              width: 30.0,
              height: 30.0,
            ),
            label: 'Settings',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: onItemSelected,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
