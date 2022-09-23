import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/manage_profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 30.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/images/luca.jpg',
                      width: 120,
                      height: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                'JD/A',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ManageProfile()));
                },
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          CupertinoIcons.pencil_ellipsis_rectangle,
                        ),
                      ),
                      Text(
                        'Manage Profile',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Notifications',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    leading: const Icon(CupertinoIcons.bell),
                    trailing: const Icon(CupertinoIcons.chevron_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'My List',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    leading: const Icon(CupertinoIcons.text_badge_checkmark),
                    trailing: const Icon(CupertinoIcons.chevron_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'App Settings',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    leading: const Icon(CupertinoIcons.settings),
                    trailing: const Icon(CupertinoIcons.chevron_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Account',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    leading: const Icon(CupertinoIcons.person),
                    trailing: const Icon(CupertinoIcons.chevron_right),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Help',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    leading: const Icon(CupertinoIcons.question_circle),
                    trailing: const Icon(CupertinoIcons.chevron_right),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign Out',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
