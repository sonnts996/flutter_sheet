/*
 Created by Thanh Son on 4/18/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../manager/sheet_manager.dart';

/// Provider consumer for SheetProvider
class SheetConsumer<T> extends SingleChildStatelessWidget {
  const SheetConsumer(
      {Key? key, Widget? child, required this.builder, this.name})
      : super(key: key, child: child);

  /// widget builder function
  final Widget Function(
    BuildContext context,
    T sheet,
    Widget? child,
  ) builder;

  /// name of sheet use for this consumer
  final String? name;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer<SheetManager<T>>(
      builder: (context, value, child) => builder.call(
        context,
        value.read(name),
        child,
      ),
      child: child,
    );
  }
}

/// Provider consumer for SheetProvider
class SheetConsumer2<T1, T2> extends SingleChildStatelessWidget {
  const SheetConsumer2({
    Key? key,
    Widget? child,
    required this.builder,
    this.name1,
    this.name2,
  }) : super(key: key, child: child);

  /// widget builder function
  final Widget Function(
    BuildContext context,
    T1 name1,
    T2 name2,
    Widget? child,
  ) builder;

  /// name of [T1] sheet use for this consumer
  final String? name1;

  /// name of [T2] sheet use for this consumer
  final String? name2;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer2<SheetManager<T1>, SheetManager<T2>>(
      builder: (context, value, value2, child) => builder.call(
        context,
        value.read(name1),
        value2.read(name2),
        child,
      ),
      child: child,
    );
  }
}

/// Provider consumer for SheetProvider
class SheetConsumer3<T1, T2, T3> extends SingleChildStatelessWidget {
  const SheetConsumer3({
    Key? key,
    Widget? child,
    required this.builder,
    this.name1,
    this.name2,
    this.name3,
  }) : super(key: key, child: child);

  /// widget builder function
  final Widget Function(
    BuildContext context,
    T1 sheet1,
    T2 sheet2,
    T3 sheet3,
    Widget? child,
  ) builder;

  /// name of [T1] sheet use for this consumer
  final String? name1;

  /// name of [T2]  sheet use for this consumer
  final String? name2;

  /// name of [T3] sheet use for this consumer
  final String? name3;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer3<SheetManager<T1>, SheetManager<T2>, SheetManager<T3>>(
      builder: (context, value, value2, value3, child) => builder.call(
        context,
        value.read(name1),
        value2.read(name2),
        value3.read(name3),
        child,
      ),
      child: child,
    );
  }
}
