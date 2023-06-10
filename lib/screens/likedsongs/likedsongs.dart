import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_project/application/likedsongs/likedsongs_bloc.dart';
import 'package:my_project/model/dbfunction.dart';
import 'package:my_project/model/likedSongs.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../../model/recentlyPlayed.dart';
import '../nowplaying/nowplaying.dart';

class LikedScreen extends StatefulWidget {
  const LikedScreen({super.key});
  static int? indexnotifier = 0;
  static ValueNotifier<int> likedscreenindex =
      ValueNotifier<int>(indexnotifier!);

  @override
  State<LikedScreen> createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  List<Audio> likesogs = [];
      //  List<LikedSongs> favSong = [];
  @override
  void initState() {
    List<LikedSongs> likeddbsong = likedsongbox.values.toList();
    for (var item in likeddbsong) {
      likesogs.add(Audio.file(item.songurl!,
          metas: Metas(
            artist: item.songname,
            title: item.artist,
            id: item.id.toString(),
          )));
    }

    super.initState();
  }

  Widget build(BuildContext context) {
    int val = 0;
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
                'Liked Songs',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          BlocConsumer<LikedsongsBloc,LikedsongsState>(
              // valueListenable: likedsongbox.listenable(),
              listener: (context,State){},
              buildWhen: (previous, current) => current is Displaylikedsongs,
              builder: (context, Likedstate) {
                if(Likedstate is Initial){
                 context.read<LikedsongsBloc>().add(Fetchlikedsongs());
                }
                 List<LikedSongs> favSong = [];
                if(Likedstate is Displaylikedsongs){
                  context.read<LikedsongsBloc>().add(Fetchlikedsongs());
                  favSong =Likedstate.likedlist;
                }
               favSong = favSong.reversed.toList();
                if (favSong.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        "You haven't liked anything ! Try playing something.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }
                 else {
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 22, 22, 22),
                            ),
                            child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: QueryArtworkWidget(
                                    id: favSong[index].id!,
                                    type: ArtworkType.AUDIO,
                                    artworkFit: BoxFit.cover,
                                    nullArtworkWidget: ClipRect(
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
                                    NowPlaying.nowplayingList.value = favSong;
                                    RecentlyPlayed songslst = RecentlyPlayed(
                                        songname: favSong[index].songname,
                                        artist: favSong[index].artist,
                                        duration: int.parse(
                                            favSong[index].duration.toString()),
                                        songurl: favSong[index].songurl,
                                        id: favSong[index].id);
                                    updaterecentlyplayed(songslst);

                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const NowPlaying();
                                    }));
                                  },
                                  child: Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          favSong[index].songname!,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          favSong[index].artist!,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  )),
                              trailing: IconButton(
                                  onPressed: () {
                                    likedsongbox.deleteAt(index);
                                  },
                                  icon: const Icon(
                                    Icons.remove_circle,
                                    size: 30,
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox();
                      },
                      itemCount: favSong.length,
                    ),
                  );
                }
              })
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_filled,color: Colors.blue,size: 30,)),
          //       SizedBox(width: 20,),
          //       Column(
          //         children: [
          //           Text('kesariyathera brahmastra',style: TextStyle(fontWeight: FontWeight.bold),),
          //           Text('artist'),
          //         ],
          //       ),
          //       SizedBox(width:30 ,),
          //       IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.green,)),
          //       IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline,color: Colors.red,))

          //     ],
          //   ),
          // ),
        ],
      )),
    );
  }
}
