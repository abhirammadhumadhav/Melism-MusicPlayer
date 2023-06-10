part of 'mostlyplayed_bloc.dart';

@freezed
class MostlyplayedEvent with _$MostlyplayedEvent {
  const factory MostlyplayedEvent.fetchmostly() = Fetchmostly;
  const factory MostlyplayedEvent.addmostly(int index,List mostplaysong) = Addmostly;

}