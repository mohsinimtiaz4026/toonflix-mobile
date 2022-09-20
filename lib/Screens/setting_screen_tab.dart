import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toonflix_app/Providers/theme_provider.dart';

class SettingsScreenTab extends StatelessWidget {
  const SettingsScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: ListTile(
          title: Text(
            'Change Theme',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    'Select a theme',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadioListTile<ThemeMode>(
                        title: Text(
                          'Light Mode',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        value: ThemeMode.light,
                        groupValue: themeChanger.themeMode,
                        onChanged: themeChanger.setTheme,
                      ),
                      RadioListTile<ThemeMode>(
                        title: Text(
                          'Dark Mode',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        value: ThemeMode.dark,
                        groupValue: themeChanger.themeMode,
                        onChanged: themeChanger.setTheme,
                      ),
                      RadioListTile<ThemeMode>(
                        title: Text(
                          'System Mode',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        value: ThemeMode.system,
                        groupValue: themeChanger.themeMode,
                        onChanged: themeChanger.setTheme,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
