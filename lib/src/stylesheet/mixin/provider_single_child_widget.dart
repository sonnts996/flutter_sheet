/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'package:flutter_stylesheet/flutter_stylesheet.dart';
import 'package:provider/single_child_widget.dart';

mixin FssProviderSingleChildWidget on SingleChildWidget {}

mixin StyleSheetUsing<S extends StatefulWidget> on State<S> {
  T getStyle<T extends FlutterStyleSheet>(
      {String? stylesheet, bool listen = false}) {
    return StyleSheetProvider.of<T>(
      context,
      listen: listen,
      stylesheet: stylesheet,
    );
  }

  void applyStyle<T extends FlutterStyleSheet>(String stylesheet) {
    StyleSheetProvider.apply<T>(context, stylesheet);
  }

  SheetManager<T> getStyleManager<T extends FlutterStyleSheet>(
      {bool listen = false}) {
    return StyleSheetProvider.manager<T>(
      context,
      listen: listen,
    );
  }
}
