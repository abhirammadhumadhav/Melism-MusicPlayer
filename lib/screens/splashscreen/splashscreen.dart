import 'package:flutter/material.dart';
import 'package:my_project/model/songmodel.dart';
import 'package:on_audio_query/on_audio_query.dart';
// import '../homescreen/bottomnavBar.dart';
import '../homescreen/mainpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

final audioquery = OnAudioQuery();
final box = SongBox.getInstance();

List<SongModel> fetchSongs = [];
List<SongModel> allSongs = [];
//List<Audio> fullsongs = [];

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    requestStoragePermission();
    // gotoHome();
    super.initState();
  }

  requestStoragePermission() async {
    bool permissionStatus = await audioquery.permissionsStatus();
    if (!permissionStatus) {
      await audioquery.permissionsRequest();

      fetchSongs = await audioquery.querySongs();
      for (var element in fetchSongs) {
        if (element.fileExtension == "mp3") {
          allSongs.add(element);
        }
      }

      for (var element in allSongs) {
        await box.add(Songs(
            songname: element.title,
            artist: element.artist,
            duration: element.duration.toString(),
            id: element.id,
            songurl: element.uri));
      }
    }
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return mainscreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 31, 55),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Card(
                  child: Image.asset(
                'lib/assets/images/c88487f89a601bf5c98ac00063b694a4.jpg',
                fit: BoxFit.cover,
              )),
            ),
            Text(
              'MELISM',
              style: TextStyle(fontSize: 40, color: Colors.purple),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return mainscreen();
    }));
  }
}
