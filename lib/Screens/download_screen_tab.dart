import 'package:flutter/material.dart';

class DownloadScreenTab extends StatelessWidget {
  const DownloadScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Icon(
            Icons.email_rounded,
            size: 56,
            color: Colors.green[400],
          ),
        ),
      ),
    );
  }
}
