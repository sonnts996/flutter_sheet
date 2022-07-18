/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../manager/sheet_manager.dart';
import '../manager/sheet_manager_mixin.dart';
import 'mixin/provider_single_child_widget.dart';

///
/// A Provider Widget to use sheet
/// [hotReload] is use for re-create sheet in each re-build
/// [createSheets] is a map for lazy create sheet, create only use it
/// [value] if you want to use a singleTon sheet instance
class SheetProvider<T> extends SingleChildStatelessWidget
    with SheetProviderSingleChildWidget {
  const SheetProvider(
      {Key? key,
      required Map<String, Creator<T>>? createSheets,
      Widget? child,
      this.hotReload = false})
      : _createSheets = createSheets,
        value = null,
        super(key: key, child: child);

  const SheetProvider.value({Key? key, required T sheet, Widget? child})
      : value = sheet,
        _createSheets = null,
        hotReload = false,
        super(key: key, child: child);

  final Map<String, Creator<T>>? _createSheets;

  /// a SingleTon value of sheet, each [SheetProvider] as only one value
  final T? value;

  /// if true, on each re-build, sheet creator will be call, else sheet instance is singleTon
  final bool hotReload;

  /// return [T] sheet manager
  static SheetManagerMixin<T> manager<T>(BuildContext context,
      {bool listen = false}) {
    try {
      return Provider.of<SheetManager<T>>(context, listen: listen);
    } on ProviderNotFoundException catch (e) {
      if (e.valueType != T) rethrow;
      throw FlutterError(
        '''
        FlutterSheetProvider.of() called with a context that does not contain a $T.
        No ancestor could be found starting from the context that was passed to FlutterSheetProvider.of<$T>().
        This can happen if the context you used comes from a widget above the FlutterSheetProvider.
        The context used was: $context
        ''',
      );
    }
  }

  /// return current sheet or sheet with [name]
  static T of<T>(BuildContext context, {bool listen = false, String? name}) {
    return manager<T>(context, listen: listen).read(name);
  }

  ///change current sheet with [name]
  static void apply<T>(BuildContext context, String name) {
    manager<T>(context, listen: false).apply(name);
  }

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if (value != null) {
      return ChangeNotifierProvider<SheetManager<T>>.value(
        value: SheetManager<T>.value(value!),
        child: child,
      );
    } else {
      return ChangeNotifierProvider<SheetManager<T>>(
        create: (context) => SheetManager<T>(
          _createSheets!,
          hotReload: hotReload,
        ),
        child: child,
        lazy: true,
      );
    }
  }
}
