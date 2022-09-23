import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/audio_subtitle_lang.dart';
import 'package:toonflix_app/Screens/display_language.dart';

class ManageProfile extends StatefulWidget {
  const ManageProfile({Key? key}) : super(key: key);

  @override
  State<ManageProfile> createState() => _ManageProfileState();
}

class _ManageProfileState extends State<ManageProfile> {
  bool autoEpisode = false;
  bool autoPreview = false;
  TextEditingController fullname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.chevron_left,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "assets/images/luca.jpg",
                    width: 120,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 40.0,
                ),
                child: TextFormField(
                  controller: fullname..text = 'JD/A',
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DisplayLanguage()));
                      },
                      leading: const Icon(CupertinoIcons.textformat),
                      title: Text(
                        'Display Language',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      trailing: const Icon(CupertinoIcons.chevron_right),
                      subtitle: Text(
                        'Change the language of the text you want to see on toonflix on all devices.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AudioSubtitleLanguages()));
                      },
                      leading: const Icon(CupertinoIcons.captions_bubble),
                      title: Text(
                        'Audio & Subtitle Languages',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      trailing: const Icon(CupertinoIcons.chevron_right),
                      subtitle: Text(
                        'Change the language you like to watch cartoons and movies in.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: const Icon(
                          CupertinoIcons.plus_rectangle_on_rectangle),
                      title: Text(
                        'Autoplay next episode',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      trailing: Switch(
                        value: autoEpisode,
                        onChanged: (newValue) {
                          setState(() {
                            autoEpisode = newValue;
                          });
                        },
                      ),
                      subtitle: Text(
                        'On all devices.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: const Icon(CupertinoIcons.memories),
                      title: Text(
                        'Autoplay previews',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      trailing: Switch(
                        value: autoPreview,
                        onChanged: (newValue) {
                          setState(() {
                            autoPreview = newValue;
                          });
                        },
                      ),
                      subtitle: Text(
                        'On all devices.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(CupertinoIcons.delete_simple),
                      ),
                      Text(
                        'Delete Account',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
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
