part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState.playlistinitial() = Playlistinitial;
  const factory PlaylistState.displayplaylis({required List<PlayListSongs> playlistlist}) =Displayplaylis; 
  const factory PlaylistState.displayplaylistedscreen({required List<Songs> plalistlist}) = Displayplaylistedscreen;
}
