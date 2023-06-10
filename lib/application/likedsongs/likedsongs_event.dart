part of 'likedsongs_bloc.dart';

@freezed
class LikedsongsEvent with _$LikedsongsEvent {
  const factory LikedsongsEvent.fetchlikedsongs() = Fetchlikedsongs;
   const factory LikedsongsEvent.addlikedsongs({ value}) = Addlikedsongs;
   const factory LikedsongsEvent.deletelikedsongs({required BuildContext contex, required int index}) = Deletelikedsongs;
}