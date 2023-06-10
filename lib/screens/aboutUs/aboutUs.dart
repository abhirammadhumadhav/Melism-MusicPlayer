import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'AboutUs',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Our music player is a powerful and intuitive tool designed to enhance your listening experience. With its sleek and user-friendly interface, you can easily browse and organize your music library, create playlists, and enjoy high-quality audio playback. Our player supports a wide range of audio formats and includes advanced features such as gapless playback, crossfading, and equalizer settings, giving you complete control over your music. Whether youre a casual listener or an audiophile, our music player is the perfect companion for all your music needs.',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          )
        ],
      )),
    );
  }
}
