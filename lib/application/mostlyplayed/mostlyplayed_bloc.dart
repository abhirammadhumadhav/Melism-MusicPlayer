import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/function_widget/add_mostly_played_songs.dart';
import 'package:my_project/model/mostlyplayed.dart';

part 'mostlyplayed_event.dart';
part 'mostlyplayed_state.dart';
part 'mostlyplayed_bloc.freezed.dart';

class MostlyplayedBloc extends Bloc<MostlyplayedEvent, MostlyplayedState> {
  MostlyplayedBloc() : super(Initial()) {
    on<Fetchmostly>((event, emit) {
      // TODO: implement event handler
      List mostplaylist = Mostlyplaybox.getInstance().values.toList();
      emit(Displaymostplayedsongs(mostplaylist: mostplaylist));
    });
    on<Addmostly>((event, emit) {
      checkmostplayed(event.mostplaysong, event.index);
      add(Fetchmostly());
    });
  }
}
