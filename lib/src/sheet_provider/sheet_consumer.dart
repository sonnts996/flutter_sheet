/*
 Created by Thanh Son on 4/18/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'sheet_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class SheetConsumer<T> extends SingleChildStatelessWidget {
  const SheetConsumer(
      {Key? key, Widget? child, required this.builder, this.sheet})
      : super(key: key, child: child);

  final Widget Function(
    BuildContext context,
    T sheet,
    Widget? child,
  ) builder;
  final String? sheet;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer<SheetManager<T>>(
      builder: (context, value, child) => builder.call(
        context,
        value.get(sheet),
        child,
      ),
      child: child,
    );
  }
}

class SheetConsumer2<T1, T2> extends SingleChildStatelessWidget {
  const SheetConsumer2({
    Key? key,
    Widget? child,
    required this.builder,
    this.sheet1,
    this.sheet2,
  }) : super(key: key, child: child);

  final Widget Function(
    BuildContext context,
    T1 sheet1,
    T2 sheet2,
    Widget? child,
  ) builder;
  final String? sheet1;
  final String? sheet2;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer2<SheetManager<T1>, SheetManager<T2>>(
      builder: (context, value, value2, child) => builder.call(
        context,
        value.get(sheet1),
        value2.get(sheet2),
        child,
      ),
      child: child,
    );
  }
}

class SheetConsumer3<T1, T2, T3> extends SingleChildStatelessWidget {
  const SheetConsumer3({
    Key? key,
    Widget? child,
    required this.builder,
    this.sheet1,
    this.sheet2,
    this.sheet3,
  }) : super(key: key, child: child);

  final Widget Function(
    BuildContext context,
    T1 sheet1,
    T2 sheet2,
    T3 sheet3,
    Widget? child,
  ) builder;
  final String? sheet1;
  final String? sheet2;
  final String? sheet3;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer3<SheetManager<T1>, SheetManager<T2>, SheetManager<T3>>(
      builder: (context, value, value2, value3, child) => builder.call(
        context,
        value.get(sheet1),
        value2.get(sheet2),
        value3.get(sheet3),
        child,
      ),
      child: child,
    );
  }
}
