/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:flutter/material.dart';
import 'package:flutter_stylesheet/src/stylesheet/mixin/sheet_manager.dart';
import 'package:flutter_stylesheet/src/stylesheet/stylesheet.dart';
import 'package:flutter_stylesheet/src/stylesheet/stylesheet_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'mixin/provider_single_child_widget.dart';

class StyleSheetProvider<T extends FlutterStyleSheet>
    extends SingleChildStatelessWidget with FssProviderSingleChildWidget {
  const StyleSheetProvider(
      {Key? key,
      required Map<String, CreateSheet<T>>? createSheets,
      required Widget child,
      this.hotReload = false})
      : _createSheets = createSheets,
        value = null,
        super(key: key, child: child);

  const StyleSheetProvider.value(
      {Key? key, required T stylesheet, required Widget child})
      : value = stylesheet,
        _createSheets = null,
        hotReload = false,
        super(key: key, child: child);

  final Map<String, CreateSheet<T>>? _createSheets;
  final T? value;
  final bool hotReload;

  static SheetManager<T> manager<T extends FlutterStyleSheet>(
      BuildContext context,
      {bool listen = false}) {
    try {
      return Provider.of<StyleSheetManager<T>>(context, listen: listen);
    } on ProviderNotFoundException catch (e) {
      if (e.valueType != T) rethrow;
      throw FlutterError(
        '''
        FlutterStyleSheetProvider.of() called with a context that does not contain a $T.
        No ancestor could be found starting from the context that was passed to FlutterStyleSheetProvider.of<$T>().
        This can happen if the context you used comes from a widget above the FlutterStyleSheetProvider.
        The context used was: $context
        ''',
      );
    }
  }

  static T of<T extends FlutterStyleSheet>(BuildContext context,
      {bool listen = false, String? stylesheet}) {
    return manager<T>(context, listen: listen).get(stylesheet);
  }

  static void apply<T extends FlutterStyleSheet>(
      BuildContext context, String stylesheet) {
    manager<T>(context, listen: false).apply(stylesheet);
  }

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if (value != null) {
      return ChangeNotifierProvider<StyleSheetManager<T>>.value(
        value: StyleSheetManager<T>.value(value!),
        child: child,
      );
    } else {
      return ChangeNotifierProvider<StyleSheetManager<T>>(
        create: (context) => StyleSheetManager<T>(
          _createSheets!,
          hotReload: hotReload,
        ),
        child: child,
        lazy: true,
      );
    }
  }
}
