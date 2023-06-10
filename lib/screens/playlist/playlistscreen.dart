// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_project/application/playlist/playlist_bloc.dart';
import 'package:my_project/model/dbfunction.dart';
import 'package:my_project/model/playlist.dart';

import '../playlistedScreen/playlistedscreen.dart';
// import 'package:my_project/screens/miniplayer/miniplayer.dart';

// import 'package:my_project/screens/homescreen/homescreen.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  TextEditingController textEditingController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //  final playlistsongbox = Playlistbox.getInstance();
    //  final playlistlist = Playlistbox.getInstance().values.toList();
      List<PlayListSongs> playlistlist = [];
      final box = Playlistbox.getInstance();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 31, 55),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            height: 240,
            child: Image.asset(
              'lib/assets/images/100-best-rock-bands-of-the-2010s.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Playlist',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              // Icon(Icons.playlist_add,color: Colors.purple,size: 30,),
              IconButton(
                  onPressed: () {
                    playlistAlertBox(
                        context: context,
                        textEditingController: textEditingController,
                        formGlobalKey: formGlobalKey,
                        indicator: 0);
                  },
                  icon: const Icon(
                    Icons.playlist_add,
                    size: 30,
                    color: Colors.purple,
                  ))
            ],
          ),
         BlocBuilder<PlaylistBloc,PlaylistState>(
              // valueListenable: Playlistbox.getInstance().listenable(),
              builder: (context, Playliststate) {
                // final playlistlist = playlistBox.values.toList();
                context.read<PlaylistBloc>().add(Fetchplaylistsongs());
                if(Playliststate is Displayplaylis){
                  playlistlist = Playliststate.playlistlist;
                }

                return box.isEmpty
                    ? const Text(
                        'playlist is empty,create one',
                        style: TextStyle(color: Colors.white),
                      )
                    : Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                onTap: () {
                                  playlistedscreen.playlistNotifier.value =
                                      index;
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return playlistedscreen();
                                  }));
                                },
                                leading: IconButton(
                                    onPressed: () {
                                      playlistAlertBox(
                                          context: context,
                                          textEditingController:
                                              textEditingController,
                                          formGlobalKey: formGlobalKey,
                                          indicator: 1,
                                          playindex: index);
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.blue,
                                    )),
                                tileColor:
                                    const Color.fromARGB(255, 113, 72, 91),
                                title: Center(
                                  child: Text(
                                    playlistlist[index].playlistName!,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      playlistsongbox.deleteAt(index);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                              ),
                            );
                          },
                          itemCount: playlistlist.length,
                        ),
                      );
              })
          // Placeholder( ),
        ],
      )),
      // floatingActionButton: MiniPlayer(),
    );
  }

  playlistAlertBox(
      {required BuildContext context,
      required TextEditingController textEditingController,
      required GlobalKey<FormState> formGlobalKey,
      int playindex = 0,
      required int indicator}) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Playlist Name'),
            content: Form(
                key: formGlobalKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: textEditingController,
                      decoration:
                          const InputDecoration(labelText: 'playlist Name'),
                      validator: (value) {
                        List<PlayListSongs> values =
                            playlistsongbox.values.toList();
                        bool isAlreadyAdded = values
                            .where((element) =>
                                element.playlistName == value!.trim())
                            .isNotEmpty;
                        if (value!.trim() == '') {
                          return 'Name Required';
                        }
                        if (value.trim().length > 15) {
                          return 'Enter Characters below 10';
                        }
                        if (isAlreadyAdded) {
                          return 'Name Already Exists ';
                        }
                        return null;
                      },
                    ),
                  ],
                )),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('cancel')),
              TextButton(
                  onPressed: () {
                    final isValid = formGlobalKey.currentState!.validate();
                    if (isValid) {
                      // createPlayList(textEditingController.text, addList: []);
                      if (indicator == 0) {
                        Playlistbox.getInstance().add(PlayListSongs(
                            playlistName: textEditingController.text,
                            listPlaylist: []));
                      } else if (indicator == 1) {
                        List<PlayListSongs> playlist =
                            Playlistbox.getInstance().values.toList();
                        playlist[playindex].playlistName =
                            textEditingController.text;
                      }
                      Navigator.of(context).pop();
                      setState(() {});
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => PlaylistScreen(),
                      // ));
                    }
                  },
                  child: const Text('Submit'))
            ],
          );
        });
  }
}
