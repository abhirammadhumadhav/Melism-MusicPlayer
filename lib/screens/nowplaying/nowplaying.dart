import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_project/model/dbfunction.dart';
import 'package:my_project/model/likedSongs.dart';
import 'package:my_project/model/songmodel.dart';
import 'package:my_project/screens/homescreen/homescreen.dart';
import 'package:my_project/screens/likedsongs/likedsongs.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../../function_widget/update_liked_songs.dart';
import '../miniplayer/miniplayer.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key});
  static int? indexNotifier = 0;

  static ValueNotifier<int> nowplayingindex =
      ValueNotifier<int>(indexNotifier!);
  static List listnotifier = SongBox.getInstance().values.toList();
  static ValueNotifier nowplayingList = ValueNotifier(listnotifier);
  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying>
    with SingleTickerProviderStateMixin {
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  late AnimationController iconController;
  late List<Songs> dbSongs;
  bool isButtonPressed = false;
  Color buttoncolor = Colors.grey;
  bool isRepeat = false;
  bool isShuffle = false;
  bool isplaying = false;
  bool isAnimated = true;
  bool showPlay = true;
  bool showPause = false;
  bool isLiked = false;
  final box = SongBox.getInstance();

  AssetsAudioPlayer player = AssetsAudioPlayer.withId('0');
// double _songposition=0;

  @override
  void initState() {
    // TODO: implement initState
    iconController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    if (!player.isPlaying.value) {
      player.open(
          Audio.file(NowPlaying
              .nowplayingList.value[NowPlaying.nowplayingindex.value].songurl!),
          showNotification: true,
          headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplugPlayOnPlug);
    }
    iconController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return ValueListenableBuilder(
      valueListenable: NowPlaying.nowplayingindex,
      builder: (context, value, child) {
        return ValueListenableBuilder(
          valueListenable: NowPlaying.nowplayingList,
          builder: ((context, allSongs, child) {
            List allDbSongs = allSongs;

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
                            //   setState(() {});
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
                        'PLAYING SUGGESTED SONG',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  QueryArtworkWidget(
                    id: allDbSongs[value].id!,
                    type: ArtworkType.AUDIO,
                    artworkWidth: 200,
                    artworkHeight: 200,
                    artworkFit: BoxFit.cover,
                    artworkBorder: BorderRadius.circular(15),
                    nullArtworkWidget: Image.asset(
                      'lib/assets/images/home-page-filipwolak-cirkiz-33311.webp',
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            allDbSongs[value].songname!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.red),
                          ),
                          Text(
                            allDbSongs[value].artist!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          LikedSongs fav = LikedSongs(
                            songname: allDbSongs[value].songname!,
                            artist: allDbSongs[value].artist!,
                            duration: int.parse(allDbSongs[value].duration!),
                            songurl: allDbSongs[value].songurl,
                            id: allDbSongs[value].id!,
                          );
                          updatedlikedsongs(fav);
                          LikedScreen.likedscreenindex.value = value;
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: isLiked ? Colors.green : Colors.grey,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            showplaylist(context, allDbSongs[value]);
                          },
                          icon: const Icon(
                            Icons.playlist_add,
                            color: Colors.purple,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    width: double.infinity,
                    child: PlayerBuilder.realtimePlayingInfos(
                      player: player,
                      builder: (context, RealtimePlayingInfos) {
                        final current = RealtimePlayingInfos.current;
                        if (current == null) {
                          return const SizedBox(); // Or show a loading/error widget
                        }
                        final duration = current.audio.duration;
                        final position = RealtimePlayingInfos.currentPosition;
                        return ProgressBar(
                          progress: position,
                          progressBarColor: Colors.purple,
                          timeLabelTextStyle:
                              const TextStyle(color: Colors.white),
                          onSeek: (Duration? duration) async {
                            if (duration != null) {
                              await player.seek(duration);
                            }
                          },
                          total: duration,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  Row(
                    children: [
                      PlayerBuilder.isPlaying(
                          player: player,
                          builder: (context, isplaying) {
                            return IconButton(
                              onPressed: () {
                                setState(() {
                                  if (isRepeat) {
                                    player.setLoopMode(LoopMode.none);
                                    isRepeat = false;
                                  } else {
                                    player.setLoopMode(LoopMode.single);
                                    isRepeat = true;
                                  }
                                  isButtonPressed = !isButtonPressed;
                                  buttoncolor = isButtonPressed
                                      ? Colors.green
                                      : Colors.red;
                                });
                              },
                              icon: const Icon(
                                Icons.repeat_on_rounded,
                                color: Colors.grey,
                              ),
                              color: buttoncolor,
                            );
                          }),
                      const SizedBox(
                        width: 50,
                      ),
                      PlayerBuilder.isPlaying(
                          player: player,
                          builder: (contex, isplaying) {
                            return IconButton(
                                onPressed: () async {
                                  player.open(Audio.file(
                                          // if(value.index==0)
                                          allDbSongs[value - 1].songurl!),
                                      showNotification: true);
                                  setState(() {
                                    NowPlaying.nowplayingindex.value--;
                                    MiniPlayer.miniNotifier.value--;
                                  });
                                  iconController.forward();
                                  await player.stop();
                                },
                                icon: const Icon(
                                  Icons.fast_rewind,
                                  size: 35,
                                ));
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      PlayerBuilder.isPlaying(
                          player: player,
                          builder: (context, isPlaying) {
                            if (player.isPlaying.value) {
                              iconController.forward();
                            } else {
                              iconController.reverse();
                            }
                            return IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (isAnimated) {
                                      iconController.reverse();
                                      player.pause();
                                      isAnimated = false;
                                    } else {
                                      iconController.forward();
                                      player.play();
                                      isAnimated = true;
                                    }
                                  });
                                },
                                icon: AnimatedIcon(
                                  icon: AnimatedIcons.play_pause,
                                  progress: iconController,
                                  size: 35,
                                  color: Colors.purple,
                                ));
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      PlayerBuilder.isPlaying(
                          player: player,
                          builder: (contex, isplaying) {
                            return IconButton(
                                onPressed: () async {
                                  player.open(
                                      Audio.file(
                                          allDbSongs[value + 1].songurl!),
                                      showNotification: true);
                                  setState(() {
                                    NowPlaying.nowplayingindex.value++;
                                    MiniPlayer.miniNotifier.value++;
                                  });
                                  iconController.forward();
                                  await player.stop();
                                },
                                icon: const Icon(
                                  Icons.fast_forward,
                                  size: 35,
                                ));
                          }),
                      const SizedBox(
                        width: 40,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              allDbSongs.shuffle();
                              isShuffle = true;
                            });
                          },
                          icon: const Icon(
                            Icons.shuffle,
                            color: Colors.grey,
                          ))
                    ],
                  )
                ],
              )),
            );
          }),
        );
      },
    );
  }

  AnimateIcon(AssetsAudioPlayer player, int index, List dbsongs) {
    isAnimated = !isAnimated;
    if (!player.isPlaying.value) {
      iconController.forward();
      player.play();
    } else {
      iconController.reverse();
      player.pause();
    }
  }
}
