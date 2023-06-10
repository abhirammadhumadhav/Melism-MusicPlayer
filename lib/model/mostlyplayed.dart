import 'package:hive/hive.dart';

part 'mostlyplayed.g.dart';

@HiveType(typeId: 4)
class Mostlyplayed {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int? count;

  Mostlyplayed({
    required this.id,
    required this.count,
  });
}

String mostlyplayedboxname = 'mostlyplayedsongs';

class Mostlyplaybox {
  static Box? _box;
  static Box getInstance() {
    return _box ??= Hive.box(mostlyplayedboxname);
  }
}
