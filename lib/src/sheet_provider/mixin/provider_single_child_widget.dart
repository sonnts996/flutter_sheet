/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'sheet_manager.dart';
import 'package:provider/single_child_widget.dart';

import '../sheet_provider.dart';

mixin SheetProviderSingleChildWidget on SingleChildWidget {}

mixin MultiSheetUse<S extends StatefulWidget> on State<S> {
  T currentSheet<T>() => getSheet<T>();

  T getSheet<T>({String? sheet, bool listen = false}) {
    return SheetProvider.of<T>(
      context,
      listen: listen,
      sheet: sheet,
    );
  }

  void applySheet<T>(String sheet) {
    SheetProvider.apply<T>(context, sheet);
  }

  SheetManagerMixin<T> getSheetManager<T>({bool listen = false}) {
    return SheetProvider.manager<T>(
      context,
      listen: listen,
    );
  }
}

mixin SheetUse<S extends StatefulWidget, T> on State<S> {
  T currentSheet() => getSheet();

  T getSheet({String? sheet, bool listen = false}) {
    return SheetProvider.of<T>(
      context,
      listen: listen,
      sheet: sheet,
    );
  }

  void applySheet(String sheet) {
    SheetProvider.apply<T>(context, sheet);
  }

  SheetManagerMixin<T> getSheetManager({bool listen = false}) {
    return SheetProvider.manager<T>(
      context,
      listen: listen,
    );
  }
}
