/*
 Created by Thanh Son on 14/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import '../../flutter_sheet.dart';

class Sheet {
  Sheet({this.hotReload = false});

  final Map<Type, SheetManager> _collection = {};
  final bool hotReload;

  SheetManager<T>? manager<T>() {
    return _collection[T] as SheetManager<T>?;
  }

  SheetManager<T> managerNonNull<T>() {
    final _manager = manager<T>();
    if (_manager == null) {
      throw SheetNotRegisterException(T.toString());
    }
    return _manager;
  }

  static setup({required bool hotReload}) {
    _instance ??= Sheet(hotReload: hotReload);
  }

  static Sheet? _instance;

  static Sheet get shared {
    _instance ??= Sheet();
    return _instance!;
  }

  static void register<T>(T value, {String name = ''}) {
    var manager = shared.manager<T>();
    if (manager == null) {
      manager =
          SheetManager<T>.value(value, name: name, hotReload: shared.hotReload);
      shared._collection[T] = manager;
    } else {
      manager.add(name, value);
    }
  }

  static void registerLazy<T>(CreateSheet<T> value, {String name = ''}) {
    var manager = shared.manager<T>();
    if (manager == null) {
      manager = SheetManager<T>({name: value}, hotReload: shared.hotReload);
      shared._collection[T] = manager;
    } else {
      manager.addLazy(name, value);
    }
  }

  static void registerLazyCollection<T>(Map<String, CreateSheet<T>> create) {
    var manager = shared.manager<T>();
    if (manager == null) {
      manager = SheetManager<T>(create, hotReload: shared.hotReload);
      shared._collection[T] = manager;
    } else {
      create.forEach((key, value) => manager!.addLazy(key, value));
    }
  }

  static void unregister<T>([String name = '']) {
    final manager = shared.manager<T>();
    if (manager != null) {
      manager.remove(name);
    }
  }

  static void clear<T>() {
    final manager = shared.manager<T>();
    if (manager != null) {
      manager.clear();
    }
  }

  static void collectionClear() {
    shared._collection.clear();
  }

  static void apply<T>(String name) {
    final manager = shared.managerNonNull<T>();
    manager.apply(name);
  }

  static T read<T>([String? name]) {
    final manager = shared.managerNonNull<T>();
    return manager.read(name);
  }

  static bool isRegistered<T>([String? name]) {
    if (name == null) {
      return shared.manager<T>() != null;
    } else {
      return shared.manager()?.contains(name) == true;
    }
  }
}
