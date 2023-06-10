part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.fetchplaylistsongs() = Fetchplaylistsongs;
  const factory PlaylistEvent.createPlayList({required String playlistname}) = CreatePlayList;
  const factory PlaylistEvent.deleteplaylist({required int playlistindex}) = Deleteplaylist;
   factory PlaylistEvent.addplaylistsongs({required int playlistindex, required Songs songsname}) =Addplaylistsongs;
   const factory PlaylistEvent.deleteplaylistsongs({required int playlistindex,required int songindex}) = Deleteplaylistsongs;


}