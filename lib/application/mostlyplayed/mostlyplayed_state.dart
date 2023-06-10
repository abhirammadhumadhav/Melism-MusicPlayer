part of 'mostlyplayed_bloc.dart';

@freezed
class MostlyplayedState with _$MostlyplayedState {
  const factory MostlyplayedState.initial() = Initial;
  const factory MostlyplayedState.displaymostplayedsongs({required List mostplaylist}) = Displaymostplayedsongs;
}
