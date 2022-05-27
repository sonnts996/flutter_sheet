/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'sheet_manager.dart';
import 'package:provider/single_child_widget.dart';

import '../sheet_provider.dart';

mixin SheetProviderSingleChildWidget on SingleChildWidget {}

mixin SheetUsing<S extends StatefulWidget> on State<S> {
  T getStyle<T>({String? sheet, bool listen = false}) {
    return SheetProvider.of<T>(
      context,
      listen: listen,
      sheet: sheet,
    );
  }

  void applyStyle<T>(String sheet) {
    SheetProvider.apply<T>(context, sheet);
  }

  SheetManagerMixin<T> getStyleManager<T>({bool listen = false}) {
    return SheetProvider.manager<T>(
      context,
      listen: listen,
    );
  }
}
