/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'package:provider/single_child_widget.dart';

import '../../manager/sheet_manager_mixin.dart';
import '../sheet_provider.dart';

///
/// Mixin for sheet provider widget
mixin SheetProviderSingleChildWidget on SingleChildWidget {}

///
/// extension for [StatefulWidget] with [MultiSheetProvider]
mixin MultiSheetProviderInUse<S extends StatefulWidget> on State<S> {
  /// return current [T] sheet
  T sheet<T>() => read<T>();

  /// read [T] sheet with sheet [name]
  T read<T>({String? name, bool listen = false}) {
    return SheetProvider.of<T>(
      context,
      listen: listen,
      name: name,
    );
  }

  /// change current [T] sheet with [name],
  /// auto rebuild when call apply
  void applySheet<T>(String name) {
    setState(() {
      SheetProvider.apply<T>(context, name);
    });
  }

  ///
  /// return [T] sheet manager
  SheetManagerMixin<T> getSheetManager<T>({bool listen = false}) {
    return SheetProvider.manager<T>(
      context,
      listen: listen,
    );
  }
}

///
/// Mixin for sheet provider widget with [T] sheet type predefined
mixin SheetProviderInUse<S extends StatefulWidget, T> on State<S> {
  /// current [T] [sheetName] use for this widget
  String? get sheetName => null;

  /// return current [T] sheet
  T sheet() => read(name: sheetName);

  /// read [T] sheet with sheet [name]
  T read({String? name, bool listen = false}) {
    return SheetProvider.of<T>(
      context,
      listen: listen,
      name: name,
    );
  }

  /// change current [T] sheet with [name],
  /// auto rebuild when call apply
  void applySheet(String name) {
    setState(() {
      SheetProvider.apply<T>(context, name);
    });
  }

  ///
  /// return [T] sheet manager
  SheetManagerMixin<T> getSheetManager({bool listen = false}) {
    return SheetProvider.manager<T>(
      context,
      listen: listen,
    );
  }
}
