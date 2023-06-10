import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/model/dbfunction.dart';
import 'package:my_project/model/playlist.dart';
import 'package:my_project/model/songmodel.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc() : super(const Playlistinitial()) {
    on<Fetchplaylistsongs>((event, emit) {
    // TODO: implement event handler
    List<PlayListSongs> playlist = Playlistbox.getInstance().values.toList();
    emit(PlaylistState.displayplaylis(playlistlist: playlist));
    });
    on<CreatePlayList>((event, emit) {
      createPlayList(event.playlistname);
      add(const Fetchplaylistsongs());
    });
    on<Deleteplaylist>((event, emit) {
      Playlistbox.getInstance().deleteAt(event.playlistindex);
      add(const Fetchplaylistsongs());
    });
    on<Addplaylistsongs>((event, emit) {
       AddToPlaylist(event.playlistindex, event.songsname);
       add(const Fetchplaylistsongs());
    });
    on<Deleteplaylistsongs>((event, emit) {
       List<PlayListSongs> playlist = Playlistbox.getInstance().values.toList();
       List<Songs> playsongs = playlist[event.playlistindex].listPlaylist!;
       playsongs.removeAt(event.playlistindex);
       add(const Fetchplaylistsongs());
    });
  }
}
