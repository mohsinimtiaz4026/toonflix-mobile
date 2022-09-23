import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayLanguage extends StatefulWidget {
  const DisplayLanguage({Key? key}) : super(key: key);

  @override
  State<DisplayLanguage> createState() => _DisplayLanguageState();
}

class _DisplayLanguageState extends State<DisplayLanguage> {
  String displayLanguage = 'english';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Display',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: Text(
                    'Change the language of the text you see on toonflix.Any change will also apply to the default language of audio and subtitles.',
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
              RadioListTile(
                value: "Dansk",
                title: const Text('Dansk'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Deutsch",
                title: const Text('Deutsch'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "English",
                title: const Text('English'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Espanol",
                title: const Text('Espanol'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Francais",
                title: const Text('Francais'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Indonesia",
                title: const Text('Indonesia'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Italiano",
                title: const Text('Italiano'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Urdu",
                title: const Text('Urdu'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Arabic",
                title: const Text('Arabic'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Korean",
                title: const Text('Korean'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Chinese",
                title: const Text('Chinese'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Japnese",
                title: const Text('Japnese'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              RadioListTile(
                value: "Vietnamese",
                title: const Text('Vietnamese'),
                groupValue: displayLanguage,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
