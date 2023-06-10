// import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:my_project/model/playlist.dart';
import 'package:my_project/model/recentlyPlayed.dart';
import 'package:my_project/model/songmodel.dart';

import 'likedSongs.dart';
import 'mostlyplayed.dart';
// import 'package:my_project/screens/recentlyPlayed/recentlyPlayedscreen.dart';

late Box<RecentlyPlayed> recentlyplayedbox;
recentlyplayeddb() async {
  recentlyplayedbox = await Hive.openBox('recentlyplayed');
}

updaterecentlyplayed(RecentlyPlayed value) {
  List<RecentlyPlayed> list = recentlyplayedbox.values.toList();
  bool isNot = list.where((element) => element.id == value.id).isEmpty;
  if (isNot == true) {
    recentlyplayedbox.add(value);
  } else {
    int index =
        list.indexWhere((element) => element.songname == value.songname);
    recentlyplayedbox.deleteAt(index);
    recentlyplayedbox.add(value);
  }
}

late Box<LikedSongs> likedsongbox;
likedDb() async {
  likedsongbox = await Hive.openBox('likedsongs');
}

// updatedlikedsongs(LikedSongs value) {
//   List<LikedSongs> list = likedsongbox.values.toList();
//   bool isNot =
//       list.where((element) => element.songname == value.songname).isEmpty;
//   if (isNot == true) {
//     likedsongbox.add(value);
//   } else {
//     int index =
//         list.indexWhere((element) => element.songname == value.songname);
//     likedsongbox.deleteAt(index);
//   }
// }

// bool likedorNot(LikedSongs value) {
//   List<LikedSongs> list = likedsongbox.values.toList();
//   bool isNot =
//       list.where((element) => element.songname == value.songname).isEmpty;
//   if (isNot == true) {
//     return false;
//   } else {
//     return true;
//   }
// }

late Box<PlayListSongs> playlistsongbox;
playlistDb() async {
  playlistsongbox = await Hive.openBox('playlistsongs');
}

createPlayList(String name) {
  final box = Playlistbox.getInstance();

  List<PlayListSongs> playListDB = box.values.toList();
  List<Songs> addList = [];
  bool notAlready =
      playListDB.where((element) => element.playlistName == name).isEmpty;
  if (notAlready) {
    box.add(PlayListSongs(playlistName: name, listPlaylist: addList));
  }
}

AddToPlaylist(index, Songs songs) {
  List<PlayListSongs> playlist = Playlistbox.getInstance().values.toList();
  List<Songs> playlistsongs = playlist[index].listPlaylist!;
  final isAlready = playlistsongs
      .where((element) => element.songname == songs.songname)
      .isNotEmpty;
  if (isAlready == false) {
    playlistsongs.add(songs);
  }
}

late Box mostlyplayedsongbox;
mostlyplayedDb() async {
  mostlyplayedsongbox = await Hive.openBox('mostlyplayedsongs');
}

// void checkmostplayed(List<dynamic> songList, int index) {
//   List mostlyplayed = Mostlyplaybox.getInstance().values.toList();
//   final isAlready = mostlyplayed
//       .where((element) => element.id == songList[index].id)
//       .isNotEmpty;
//   if (!isAlready) {
//     Mostlyplaybox.getInstance().add(Mostlyplayed(
//       id: songList[index].id,
//       count: 0,
//     ));
//   } else {
//     int newIndex =
//         mostlyplayed.indexWhere((element) => element.id == songList[index].id);
//     int increment = mostlyplayed[newIndex].count;
//     increment = increment + 1;
//     mostlyplayed[newIndex].count = increment;
//   }
// }

 displayMostlyPlayed() {
  List songs = Mostlyplaybox.getInstance().values.toList();
  songs.sort(
    (a, b) => a.count.compareTo(b.count),
  );
  List allmostSongs = songs.reversed.toList().take(10).toList();
  List<Songs> allDbSongs = SongBox.getInstance().values.toList();
  List<Songs> songsFromdb = [];
  for (int i = 0; i < allmostSongs.length; i++) {
    int index =
        allDbSongs.indexWhere((element) => element.id == allmostSongs[i].id);
    if (!songsFromdb.contains(allDbSongs[index])) {
      songsFromdb.add(allDbSongs[index]);
    }
  }

  return songsFromdb;
}
