import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/model/songmodel.dart';

part 'allsongs_event.dart';
part 'allsongs_state.dart';
part 'allsongs_bloc.freezed.dart';

class AllsongsBloc extends Bloc<AllsongsEvent, AllsongsState> {
  AllsongsBloc() : super(Initial()) {
    on<Started>((event, emit) {
      // TODO: implement event handler
      List<Songs> allsongsList = SongBox.getInstance().values.toList();
      emit(displayAllSongs(allsongsList: allsongsList));
    });
  }
}
