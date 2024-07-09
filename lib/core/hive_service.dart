import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';

@LazySingleton()
class HiveService {
  Future<Box<T>> getBox<T>({required String boxName}) async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box<T>(boxName);
    } else {
      return await Hive.openBox<T>(boxName);
    }
  }

  isExists({required String boxName}) async {
    final openBox = await getBox(boxName: boxName);
    int length = openBox.length;
    return length != 0;
  }

  addBoxes<T>(List<T> items, String boxName) async {
    final openBox = await getBox<T>(boxName: boxName);
    final existingItems = openBox.values.toList();
    log('existing values $existingItems}');
    for (var item in items) {
      if (existingItems.contains(item)) {
        // prettyPrint(msg: "item exits $item");
      } else {
        // prettyPrint(msg: "item added $item");
        await openBox.add(item);
      }
    }
  }

  clearAllValues<T>(String boxName) async {
    final openBox = await getBox<T>(boxName: boxName);
    prettyPrint(
        'box before **********************************${openBox.values}');

    await openBox.clear();
    prettyPrint(
        'box after **********************************${openBox.values}');
  }

  getBoxes<T>(String boxName) async {
    List<T> boxList = <T>[];

    final openBox = await getBox<T>(boxName: boxName);

    int length = openBox.length;

    for (int i = 0; i < length; i++) {
      boxList.add(openBox.getAt(i) as T);
    }

    return boxList;
  }

  deleteBoxes<T>(String boxName, {required int index}) async {
    final openBox = await getBox<T>(boxName: boxName);
    openBox.deleteAt(index);
  }
}
