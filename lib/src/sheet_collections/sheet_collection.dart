/*
 Created by Thanh Son on 14/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import '../../flutter_sheet.dart';
import '../manager/sheet_manager_mixin.dart';

///
/// Register your sheet to use, another method is [SheetProvider].
/// You can register sheet and call it in any workplace in your app.
class Sheet {
  Sheet({this.hotReload = false});

  final Map<Type, SheetManager> _collection = {};

  /// if true, the instance will be re-create when you rebuild widget such as hot reload or set state.
  final bool hotReload;

  /// return [SheetManager<T>], null if it not register.
  SheetManager<T>? manager<T>() {
    return _collection[T] as SheetManager<T>?;
  }

  /// return [SheetManager<T>], throw [SheetNotRegisterException] if it not register.
  SheetManager<T> managerNonNull<T>() {
    final _manager = manager<T>();
    if (_manager == null) {
      throw SheetNotRegisterException(T.toString());
    }
    return _manager;
  }

  /// setup [hotReload] field in one time,
  /// if the [Sheet] was setup or call any method before, the [hotReload cannot change
  static setup({required bool hotReload}) {
    _instance ??= Sheet(hotReload: hotReload);
  }

  static Sheet? _instance;

  /// Return a single ton of Sheet
  static Sheet get shared {
    _instance ??= Sheet();
    return _instance!;
  }

  /// Register sheet with [T] type, with [value] instance with name
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

  /// Register sheet with [T] type, with [value] creator with name
  static void registerLazy<T>(Creator<T> value, {String name = ''}) {
    var manager = shared.manager<T>();
    if (manager == null) {
      manager = SheetManager<T>({name: value}, hotReload: shared.hotReload);
      shared._collection[T] = manager;
    } else {
      manager.addLazy(name, value);
    }
  }

  /// Register sheet with [T] type, with many creator in one times
  static void registerLazyCollection<T>(Map<String, Creator<T>> create) {
    var manager = shared.manager<T>();
    if (manager == null) {
      manager = SheetManager<T>(create, hotReload: shared.hotReload);
      shared._collection[T] = manager;
    } else {
      create.forEach((key, value) => manager!.addLazy(key, value));
    }
  }

  /// Unregister sheet with [T] type, after that, you must be re-register if want to use [T] sheet a again
  static void unregister<T>([String name = '']) {
    final manager = shared.manager<T>();
    if (manager != null) {
      manager.remove(name);
    }
  }

  /// Clear all sheets in [T] sheet manager, the [T] sheet was not unregister,
  /// but you must be re-register if want to use [T] sheet a again
  static void clear<T>() {
    final manager = shared.manager<T>();
    if (manager != null) {
      manager.clear();
    }
  }

  /// Remove all registered sheet, you must be re-register if want to use [T] sheet a again
  static void collectionClear() {
    shared._collection.clear();
  }

  /// Change the current sheet of [T] sheet
  static void apply<T>(String name) {
    final manager = shared.managerNonNull<T>();
    manager.apply(name);
  }

  /// return current sheet of [T] sheet if [name] == null,
  /// else return [T] sheet with [name], throw [SheetNotFoundException] if [name] does not exists
  static T read<T>([String? name]) {
    final manager = shared.managerNonNull<T>();
    return manager.read(name);
  }

  /// return true if [T] sheet is registered and exist [name] if [name] != null
  static bool isRegistered<T>([String? name]) {
    if (name == null) {
      return shared.manager<T>() != null;
    } else {
      return shared.manager()?.contains(name) == true;
    }
  }
}
