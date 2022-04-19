/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/foundation.dart';
import 'package:flutter_stylesheet/src/exception/style_not_found.dart';
import 'package:flutter_stylesheet/src/stylesheet/mixin/sheet_manager.dart';
import 'package:flutter_stylesheet/src/stylesheet/stylesheet.dart';

class StyleSheetManager<T extends FlutterStyleSheet> extends ChangeNotifier
    with SheetManager<T> {
  StyleSheetManager(Map<String, CreateSheet<T>> createSheets,
      {this.hotReload = false})
      : assert(createSheets.isNotEmpty, 'Sheet cannot empty!'),
        _createSheets = createSheets,
        sheets = {};

  StyleSheetManager.value(T value)
      : _currentSheet = '',
        _createSheets = null,
        sheets = {'': value},
        hotReload = false;

  final Map<String, CreateSheet<T>>? _createSheets;
  final Map<String, T> sheets;
  final bool hotReload;

  String? _currentSheet;

  String get current => _currentSheet ?? _createSheets!.keys.first;

  void create(String stylesheet) {
    if (_createSheets != null) {
      if (hotReload || !sheets.containsKey(stylesheet)) {
        if (!_createSheets!.containsKey(stylesheet)) {
          throw StyleNotFoundException(stylesheet);
        } else {
          sheets[stylesheet] = _createSheets![stylesheet]!.call();
        }
      }
    }
  }

  @override
  void apply(String stylesheet) {
    if (_createSheets != null) {
      create(stylesheet);
      if (_currentSheet != stylesheet) {
        _currentSheet = stylesheet;
        notifyListeners();
      }
    } else {
      if (kDebugMode) {
        print('Apply stylesheet fail, cause by in value mode');
      }
    }
  }

  @override
  T get([String? stylesheet]) {
    if (_createSheets != null) {
      create(stylesheet ?? current);
      if (stylesheet == null) {
        return sheets[current]!;
      } else if (sheets.containsKey(stylesheet)) {
        return sheets[stylesheet]!;
      } else {
        throw StyleNotFoundException(stylesheet);
      }
    } else {
      return sheets.values.first;
    }
  }
}
