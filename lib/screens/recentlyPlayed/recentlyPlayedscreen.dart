import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_project/model/songmodel.dart';
import 'package:my_project/screens/homescreen/homescreen.dart';
import 'package:my_project/screens/miniplayer/miniplayer.dart';
import 'package:my_project/model/recentlyPlayed.dart';
import 'package:my_project/screens/splashscreen/splashscreen.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../../model/dbfunction.dart';
import '../nowplaying/nowplaying.dart';

class Recentlyplayed extends StatefulWidget {
  const Recentlyplayed({super.key});
  // static int? indexnotifier = 0;
  // static ValueNotifier<int> recentScreenIndex =
  //     ValueNotifier<int>(indexnotifier!);

  @override
  State<Recentlyplayed> createState() => _RecentlyplayedState();
}

class _RecentlyplayedState extends State<Recentlyplayed> {
  // List<Songs> allReSongs = SongBox.getInstance().values.toList();

  // AssetsAudioPlayer player = AssetsAudioPlayer();
  List<Audio> resongs = [];

  @override
  void initState() {
    List<RecentlyPlayed> rdbsongs =
        recentlyplayedbox.values.toList().reversed.toList();
    for (var item in rdbsongs) {
      resongs.add(Audio.file(item.songurl!,
          metas: Metas(
            artist: item.songname,
            title: item.artist,
            id: item.id.toString(),
          )));
    }
    super.initState();
  }

  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(
          child: Column(
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
                width: 50,
              ),
              const Text(
                "RECENTLY PLAYED",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ValueListenableBuilder(
            valueListenable: recentlyplayedbox.listenable(),
            builder: (context, recentSongs, child) {
              List<RecentlyPlayed> allReSongs =
                  recentlyplayedbox.values.toList().reversed.toList();

              if (allReSongs.isEmpty) {
                return const Padding(
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Text(
                      "You haven't played anything ! Try playing something.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              } else {
                return SongListWidget(allReSongs: allReSongs);
              }
            },
          ),
        ],
      )),
      // floatingActionButton: MiniPlayer(),
    );
  }
}

class SongListWidget extends StatelessWidget {
  const SongListWidget({
    super.key,
    required this.allReSongs,
  });

  final List<dynamic> allReSongs;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          List allSongs = SongBox.getInstance()
              .values
              .toList();
          int newIndex = allSongs
              .indexWhere((element) => element.id == allReSongs[index].id!);
         
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 22, 22, 22),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: QueryArtworkWidget(
                        id: allSongs[newIndex].id!,
                        type: ArtworkType.AUDIO,
                        artworkFit: BoxFit.cover,
                        nullArtworkWidget: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/images/home-page-filipwolak-cirkiz-33311.webp',
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: InkWell(
                      onTap: () {
                        NowPlaying.nowplayingindex.value = index;
                        NowPlaying.nowplayingList.value = allReSongs;

                        RecentlyPlayed songs = RecentlyPlayed(
                            songname: allSongs[newIndex].songname!,
                            artist: allSongs[newIndex].artist!,
                            duration: int.parse(
                                allSongs[newIndex].duration.toString()),
                            songurl: allSongs[newIndex].songurl!,
                            id: allSongs[newIndex].id);
                        updaterecentlyplayed(songs);

                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const NowPlaying();
                        }));
                      },
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              allSongs[newIndex].songname!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Text(
                              allSongs[newIndex].artist!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
                  // trailing: IconButton(
                  //     onPressed: () {
                  //       // showplaylist(context, allSongs[newIndex]);
                  //     },
                  //     icon: const Icon(
                  //       Icons.playlist_add,
                  //       size: 30,
                  //       color: Colors.purple,
                  //     )),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox();
        },
        itemCount: allReSongs.length,
      ),
    );
  }
}
