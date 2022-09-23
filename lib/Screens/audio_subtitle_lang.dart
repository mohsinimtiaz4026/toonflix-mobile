import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioSubtitleLanguages extends StatelessWidget {
  const AudioSubtitleLanguages({Key? key}) : super(key: key);

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
          'Audio & Subtitles',
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
                  'Change the languages you watch Cartoons and films in help us setup your audio and subtitles for a better viewing experiences.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Dansk'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Deutsch'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const CheckboxListTile(
                value: true,
                title: Text('English'),
                onChanged: null,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const CheckboxListTile(
                value: true,
                title: Text('English (United Kingdom)'),
                onChanged: null,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Espanol'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Filipino'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Espanol'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Francais'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Indonesia'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Hindi'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: false,
                title: const Text('Urdu'),
                onChanged: (value) {},
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
