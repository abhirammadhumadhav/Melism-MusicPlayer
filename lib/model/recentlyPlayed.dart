import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'recentlyPlayed.g.dart';

@HiveType(typeId: 1)
class RecentlyPlayed {
  @HiveField(0)
  final String? songname;
  @HiveField(1)
  final String? artist;
  @HiveField(2)
  final int? duration;
  @HiveField(3)
  final String? songurl;
  @HiveField(4)
  final int? id;
  RecentlyPlayed(
      {required this.songname,
      required this.artist,
      required this.duration,
      required this.songurl,
      required this.id});
}

String recentboxname = 'RecentlyPlayedSongs';

class RecentBox {
  static Box<RecentlyPlayed>? _box;
  static Box<RecentlyPlayed> getInstance() {
    return _box ??= Hive.box(recentboxname);
  }
}
