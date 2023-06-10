import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/function_widget/update_liked_songs.dart';
import 'package:my_project/model/likedSongs.dart';

part 'likedsongs_event.dart';
part 'likedsongs_state.dart';
part 'likedsongs_bloc.freezed.dart';

class LikedsongsBloc extends Bloc<LikedsongsEvent, LikedsongsState> {
  LikedsongsBloc() : super(Initial()) {
    on<Fetchlikedsongs>((event, emit) {
      // TODO: implement event handler
      List<LikedSongs> likedlist = Likedbox.getInstance().values.toList();
      emit(Displaylikedsongs(likedlist: likedlist));
    });
    on<Addlikedsongs>((event, emit) {
          updatedlikedsongs(event.value);
          add(const Fetchlikedsongs());
    });
    on<Deletelikedsongs>((event, emit) {
          Likedbox.getInstance().deleteAt(event.index);
    });
  }
}
