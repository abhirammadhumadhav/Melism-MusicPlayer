import '../model/dbfunction.dart';
import '../model/likedSongs.dart';

updatedlikedsongs(LikedSongs value) {
  List<LikedSongs> list = likedsongbox.values.toList();
  bool isNot =
      list.where((element) => element.songname == value.songname).isEmpty;
  if (isNot == true) {
    likedsongbox.add(value);
  } else {
    int index =
        list.indexWhere((element) => element.songname == value.songname);
    likedsongbox.deleteAt(index);
  }
}