part of 'likedsongs_bloc.dart';

@freezed
class LikedsongsState with _$LikedsongsState {
  const factory LikedsongsState.initial() = Initial;
  const factory LikedsongsState.displaylikedsongs({required List<LikedSongs> likedlist}) = Displaylikedsongs;

}
