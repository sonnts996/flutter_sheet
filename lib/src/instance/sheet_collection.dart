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

  static unregister<T>([String name = '']) {
    final manager = shared.manager<T>();
    if (manager != null) {
      manager.remove(name);
    }
  }

  static clear<T>() {
    final manager = shared.manager<T>();
    if (manager != null) {
      manager.clear();
    }
  }

  static collectionClear() {
    shared._collection.clear();
  }

  static apply<T>(String name) {
    final manager = shared.managerNonNull<T>();
    manager.apply(name);
  }

  static read<T>([String? name]) {
    final manager = shared.managerNonNull<T>();
    manager.read(name);
  }
}
