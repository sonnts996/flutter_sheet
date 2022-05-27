/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/foundation.dart';
import '../exception/sheet_not_found.dart';
import 'mixin/sheet_manager.dart';

class SheetManager<T> extends ChangeNotifier with SheetManagerMixin<T> {
  SheetManager(Map<String, CreateSheet<T>> createSheets,
      {this.hotReload = false})
      : assert(createSheets.isNotEmpty, 'Sheet cannot empty!'),
        _createSheets = createSheets,
        sheets = {};

  SheetManager.value(T value)
      : _currentSheet = '',
        _createSheets = null,
        sheets = {'': value},
        hotReload = false;

  final Map<String, CreateSheet<T>>? _createSheets;
  final Map<String, T> sheets;
  final bool hotReload;

  String? _currentSheet;

  String get current => _currentSheet ?? _createSheets!.keys.first;

  void create(String sheet) {
    if (_createSheets != null) {
      if (hotReload || !sheets.containsKey(sheet)) {
        if (!_createSheets!.containsKey(sheet)) {
          throw SheetNotFoundException(sheet);
        } else {
          sheets[sheet] = _createSheets![sheet]!.call();
        }
      }
    }
  }

  @override
  void apply(String sheet) {
    if (_createSheets != null) {
      create(sheet);
      if (_currentSheet != sheet) {
        _currentSheet = sheet;
        notifyListeners();
      }
    } else {
      if (kDebugMode) {
        print('Apply sheet_provider fail, cause by in value mode');
      }
    }
  }

  @override
  T get([String? sheet]) {
    if (_createSheets != null) {
      create(sheet ?? current);
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
}
