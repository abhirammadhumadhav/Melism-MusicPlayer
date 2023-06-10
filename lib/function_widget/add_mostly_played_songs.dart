import '../model/mostlyplayed.dart';

void checkmostplayed(List<dynamic> songList, int index) {
  List mostlyplayed = Mostlyplaybox.getInstance().values.toList();
  final isAlready = mostlyplayed
      .where((element) => element.id == songList[index].id)
      .isNotEmpty;
  if (!isAlready) {
    Mostlyplaybox.getInstance().add(Mostlyplayed(
      id: songList[index].id,
      count: 0,
    ));
  } else {
    int newIndex =
        mostlyplayed.indexWhere((element) => element.id == songList[index].id);
    int increment = mostlyplayed[newIndex].count;
    increment = increment + 1;
    mostlyplayed[newIndex].count = increment;
  }
}