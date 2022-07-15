/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/foundation.dart';

import '../exception/sheet_existing.dart';
import '../exception/sheet_not_found.dart';
import 'mixin/sheet_manager.dart';

class SheetManager<T> extends ChangeNotifier with SheetManagerMixin<T> {
  SheetManager(Map<String, CreateSheet<T>> createSheets,
      {this.hotReload = false})
      : assert(createSheets.isNotEmpty, 'Sheet cannot empty!'),
        _createSheets = createSheets,
        sheets = {};

  SheetManager.value(
    T value, {
    String? name,
    this.hotReload = false,
  })  : _currentSheet = name ?? '',
        _createSheets = {},
        sheets = {name ?? '': value};

  final Map<String, CreateSheet<T>> _createSheets;
  final Map<String, T> sheets;
  final bool hotReload;

  String? _currentSheet;

  String get current => _currentSheet ?? _createSheets.keys.first;

  void _create(String sheet) {
    if (_createSheets.isNotEmpty) {
      if (hotReload || !sheets.containsKey(sheet)) {
        if (!_createSheets.containsKey(sheet)) {
          throw SheetNotFoundException(sheet);
        } else {
          sheets[sheet] = _createSheets[sheet]!.call();
        }
      }
    }
  }

  @override
  void apply(String sheet) {
    if (_createSheets.isNotEmpty) {
      _create(sheet);
      if (_currentSheet != sheet) {
        _currentSheet = sheet;
        notifyListeners();
      }
    }
  }

  @override
  T read([String? sheet]) {
    if (_createSheets.isNotEmpty) {
      _create(sheet ?? current);
      if (sheet == null) {
        return sheets[current]!;
      } else if (sheets.containsKey(sheet)) {
        return sheets[sheet]!;
      } else {
        throw SheetNotFoundException(sheet);
      }
    } else {
      return sheets.values.first;
    }
  }

  @override
  bool operator ==(Object other) {
    return other is SheetManager<T> && other._currentSheet == _currentSheet;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => _currentSheet.hashCode;

  @override
  void add(String sheet, T instance) {
    if (!sheets.containsKey(sheet)) {
      sheets[sheet] = instance;
    } else {
      throw SheetExistingException(sheet);
    }
  }

  @override
  void addLazy(String sheet, CreateSheet<T> createSheet) {
    if (!sheets.containsKey(sheet) && !_createSheets.containsKey(sheet)) {
      _createSheets[sheet] = createSheet;
    } else {
      throw SheetExistingException(sheet);
    }
  }

  @override
  void remove(String sheet) {
    sheets.removeWhere((key, value) => key == sheet);
    _createSheets.removeWhere((key, value) => key == sheet);
  }

  @override
  void clear() {
    sheets.clear();
    _createSheets.clear();
  }
}
