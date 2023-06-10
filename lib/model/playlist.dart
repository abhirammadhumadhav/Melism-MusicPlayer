import 'dart:core';

import 'package:hive/hive.dart';
import 'package:my_project/model/songmodel.dart';

part 'playlist.g.dart';

@HiveType(typeId: 3)
class PlayListSongs {
  @HiveField(0)
  String? playlistName;
  @HiveField(1)
  final List<Songs>? listPlaylist;

  PlayListSongs({required this.playlistName, required this.listPlaylist});
}

String playlistboxname = 'playlistsongs';

class Playlistbox {
  static Box<PlayListSongs>? _box;
  static Box<PlayListSongs> getInstance() {
    return _box ??= Hive.box(playlistboxname);
  }
}
