import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:my_project/model/songmodel.dart';
import 'package:my_project/screens/homescreen/homescreen.dart';
import 'package:my_project/screens/miniplayer/miniplayer.dart';
import 'package:my_project/screens/nowplaying/nowplaying.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../../model/dbfunction.dart';
import '../../model/recentlyPlayed.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  final _searchController = TextEditingController();
  List<Songs> SongDisplay = SongBox.getInstance().values.toList();

  Widget check() {
    return Expanded(
        child: SongDisplay.isNotEmpty
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      NowPlaying.nowplayingindex.value = index;
                      NowPlaying.nowplayingList.value = SongDisplay;
                      RecentlyPlayed songslst = RecentlyPlayed(
                          songname: SongDisplay[index].songname,
                          artist: SongDisplay[index].artist,
                          duration:
                              int.parse(SongDisplay[index].duration.toString()),
                          songurl: SongDisplay[index].songurl,
                          id: SongDisplay[index].id);
                      updaterecentlyplayed(songslst);
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const NowPlaying();
                      }));
                    },
                    leading: CircleAvatar(
                      child: QueryArtworkWidget(
                        id: SongDisplay[index].id!,
                        artworkFit: BoxFit.cover,
                        type: ArtworkType.AUDIO,
                        nullArtworkWidget: const CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/assets/images/27-1424976662-hny.jpg'),
                        ),
                      ),
                    ),
                    title: Text(
                      SongDisplay[index].songname!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      SongDisplay[index].artist!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          showplaylist(context, SongDisplay[index]);
                        },
                        icon: const Icon(
                          Icons.playlist_add,
                          color: Colors.purple,
                        )),
                  );
                },
                itemCount: SongDisplay.length,
              )
            : const Text(
                'No Match Found',
                style: TextStyle(color: Colors.white),
              ));
  }

  Widget SearchField() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: 'What do you want to listen to?',
          hintStyle: const TextStyle(color: Colors.grey)),
      style: const TextStyle(color: Colors.white),
      onChanged: (value) {
        SearchSong(value);
      },
    );
  }

  void SearchSong(String value) {
    setState(() {
      SongDisplay = SongBox.getInstance()
          .values
          .toList()
          .where((element) =>
              element.songname!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void searchclear() {
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Search',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SearchField(),
            check(),
          ],
        ),
      )),
      // floatingActionButton: MiniPlayer(),
    );
  }
}
