import 'package:flutter/material.dart';

class SettingsScreenTab extends StatelessWidget {
  const SettingsScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Icon(
            Icons.folder_rounded,
            size: 56,
            color: Colors.blue[400],
          ),
        ),
      ),
    );
  }
}
