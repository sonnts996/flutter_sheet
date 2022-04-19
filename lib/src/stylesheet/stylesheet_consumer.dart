/*
 Created by Thanh Son on 4/18/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter_stylesheet/flutter_stylesheet.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class StyleSheetConsumer<T extends FlutterStyleSheet>
    extends SingleChildStatelessWidget {
  const StyleSheetConsumer(
      {Key? key, Widget? child, required this.builder, this.stylesheet})
      : super(key: key, child: child);

  final Widget Function(
    BuildContext context,
    T sheet,
    Widget? child,
  ) builder;
  final String? stylesheet;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer<StyleSheetManager<T>>(
      builder: (context, value, child) => builder.call(
        context,
        value.get(stylesheet),
        child,
      ),
      child: child,
    );
  }
}

class StyleSheetConsumer2<T1 extends FlutterStyleSheet,
    T2 extends FlutterStyleSheet> extends SingleChildStatelessWidget {
  const StyleSheetConsumer2({
    Key? key,
    Widget? child,
    required this.builder,
    this.stylesheet1,
    this.stylesheet2,
  }) : super(key: key, child: child);

  final Widget Function(
    BuildContext context,
    T1 sheet1,
    T2 sheet2,
    Widget? child,
  ) builder;
  final String? stylesheet1;
  final String? stylesheet2;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer2<StyleSheetManager<T1>, StyleSheetManager<T2>>(
      builder: (context, value, value2, child) => builder.call(
        context,
        value.get(stylesheet1),
        value2.get(stylesheet2),
        child,
      ),
      child: child,
    );
  }
}

class StyleSheetConsumer3<
    T1 extends FlutterStyleSheet,
    T2 extends FlutterStyleSheet,
    T3 extends FlutterStyleSheet> extends SingleChildStatelessWidget {
  const StyleSheetConsumer3({
    Key? key,
    Widget? child,
    required this.builder,
    this.stylesheet1,
    this.stylesheet2,
    this.stylesheet3,
  }) : super(key: key, child: child);

  final Widget Function(
    BuildContext context,
    T1 sheet1,
    T2 sheet2,
    T3 sheet3,
    Widget? child,
  ) builder;
  final String? stylesheet1;
  final String? stylesheet2;
  final String? stylesheet3;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer3<StyleSheetManager<T1>, StyleSheetManager<T2>,
        StyleSheetManager<T3>>(
      builder: (context, value, value2, value3, child) => builder.call(
        context,
        value.get(stylesheet1),
        value2.get(stylesheet2),
        value3.get(stylesheet3),
        child,
      ),
      child: child,
    );
  }
}
