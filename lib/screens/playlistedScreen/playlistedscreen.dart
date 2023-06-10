import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/application/playlist/playlist_bloc.dart';
import 'package:my_project/model/dbfunction.dart';
import 'package:my_project/model/recentlyPlayed.dart';
import 'package:my_project/model/songmodel.dart';
import 'package:my_project/screens/nowplaying/nowplaying.dart';
import 'package:on_audio_query/on_audio_query.dart';

// ignore: camel_case_types
class playlistedscreen extends StatefulWidget {
  const playlistedscreen({super.key});
  static int? playlistindex = 0;
  static ValueNotifier<int> playlistNotifier =
      ValueNotifier<int>(playlistindex!);
  @override
  State<playlistedscreen> createState() => _playlistedscreenState();
}

// ignore: camel_case_types
class _playlistedscreenState extends State<playlistedscreen> {

//   List<Audio> plylstsongs = [];
// List<PlayListSongs> playlists =
//                           playlistsongbox.values.toList();
//                       List<Songs> playlistsSongs =
//                           playlists[playlistedscreen.playlistNotifier.value].listPlaylist!;
  @override
  // void initState() {
  //   List<PlayListSongs> dbplaylist = playlistsongbox.values.toList();
  //   for(var item in dbplaylist){
  //     plylstsongs.add(Audio.file(item.))
  //   }
  //   
  //   super.initState();
  // }
    
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7d5647),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              const SizedBox(
                width: 70,
              ),
              const Text(
                'YOUR PLAYLIST',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
            BlocBuilder<PlaylistBloc,PlaylistState>(
              // valueListenable: playlistedscreen.playlistNotifier,
              // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
              builder: (context, PlaylistState) {
               //  List<Audio> plylstsongs = [];
                 List<Songs> playlistsSongs =[];
                if(PlaylistState is Displayplaylis){
                  playlistsSongs = PlaylistState.playlistlist[playlistedscreen.playlistNotifier.value].listPlaylist!;


                }
                // return ValueListenableBuilder(
                //     valueListenable: playlistsongbox.listenable(),
                //     builder: (context, playlistsong, child) {
                    
    //  List<PlayListSongs> playlists =
    //                       playlistsongbox.values.toList();
    //                   List<Songs> playlistsSongs =
    //                       playlists[playlistedscreen.playlistNotifier.value].listPlaylist!;
                          
                      if (playlistsSongs.isEmpty) {
                        return Center(
                          child: const Text(
                            "Your playlist is empty",
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      } else {
                        return Expanded(
                          child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    height: 10,
                                  ),
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                        const Color.fromARGB(255, 22, 22, 22),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      onTap: () {
                                        NowPlaying.nowplayingindex.value =
                                            index;
                                        NowPlaying.nowplayingList.value =
                                            playlistsSongs;

                                        RecentlyPlayed songs = RecentlyPlayed(
                                            songname:
                                                playlistsSongs[index].songname,
                                            artist:
                                                playlistsSongs[index].artist,
                                            duration: int.parse(
                                                playlistsSongs[index]
                                                    .duration!),
                                            songurl:
                                                playlistsSongs[index].artist,
                                            id: playlistsSongs[index].id);
                                        updaterecentlyplayed(songs);
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const NowPlaying();
                                        }));
                                      },
                                      leading: QueryArtworkWidget(
                                        id: playlistsSongs[index].id!,
                                        type: ArtworkType.AUDIO,
                                        artworkFit: BoxFit.cover,
                                        nullArtworkWidget: const CircleAvatar(
                                          radius: 30,
                                          backgroundImage: AssetImage(
                                              'lib/assets/images/home-page-filipwolak-cirkiz-33311.webp'),
                                        ),
                                      ),
                                      title: Text(
                                        playlistsSongs[index].songname!,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      subtitle: Text(
                                        playlistsSongs[index].artist!,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      trailing: IconButton(
                                          onPressed: () {
                                            playlistsSongs.removeAt(index);
                                            setState(() {});
                                          },
                                          icon: const Icon(
                                            Icons.remove,
                                            color: Colors.red,
                                          )),
                                    ),
                                  ),
                                );
                              },
                              itemCount: playlistsSongs.length),
                        );
                      }
                    // });
              })
        ],
      )),
    );
  }
}
