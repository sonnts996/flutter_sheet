/*
 Created by Thanh Son on 14/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';

import '../../flutter_sheet.dart';

class SheetBuilder<T> extends StatefulWidget {
  const SheetBuilder({Key? key, required this.builder, this.name})
      : super(key: key);

  final Widget Function(BuildContext context, T sheet) builder;
  final String? name;

  @override
  @override
  State<StatefulWidget> createState() => SheetBuilderState<T>();
}

class SheetBuilderState<T> extends State<SheetBuilder<T>> {
  late final SheetManager<T> manager;

  @override
  void initState() {
    super.initState();
    manager = Sheet.shared.managerNonNull<T>()..addListener(_listener);
  }

  @override
  void dispose() {
    manager.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, manager.read(widget.name));
  }
}

class Sheet2Builder<T1, T2> extends StatefulWidget {
  const Sheet2Builder({Key? key, required this.builder, this.name, this.name2})
      : super(key: key);

  const Sheet2Builder.collapse({Key? key, required this.builder, this.name})
      : name2 = name,
        super(key: key);

  final Widget Function(BuildContext context, T1 sheet, T2 sheet2) builder;
  final String? name;
  final String? name2;

  @override
  @override
  State<StatefulWidget> createState() => Sheet2BuilderState<T1, T2>();
}

class Sheet2BuilderState<T1, T2> extends State<Sheet2Builder<T1, T2>> {
  late final SheetManager<T1> manager;
  late final SheetManager<T2> manager2;

  @override
  void initState() {
    super.initState();
    manager = Sheet.shared.managerNonNull<T1>()..addListener(_listener);
    manager2 = Sheet.shared.managerNonNull<T2>()..addListener(_listener);
  }

  @override
  void dispose() {
    manager.removeListener(_listener);
    manager2.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
        context, manager.read(widget.name), manager2.read(widget.name2));
  }
}

class Sheet3Builder<T1, T2, T3> extends StatefulWidget {
  const Sheet3Builder(
      {Key? key, required this.builder, this.name, this.name2, this.name3})
      : super(key: key);

  const Sheet3Builder.collapse({Key? key, required this.builder, this.name})
      : name2 = name,
        name3 = name,
        super(key: key);

  final Widget Function(BuildContext context, T1 sheet, T2 sheet2, T3 sheet3)
      builder;
  final String? name;
  final String? name2;
  final String? name3;

  @override
  @override
  State<StatefulWidget> createState() => Sheet3BuilderState<T1, T2, T3>();
}

class Sheet3BuilderState<T1, T2, T3> extends State<Sheet3Builder<T1, T2, T3>> {
  late final SheetManager<T1> manager;
  late final SheetManager<T2> manager2;
  late final SheetManager<T3> manager3;

  @override
  void initState() {
    super.initState();
    manager = Sheet.shared.managerNonNull<T1>()..addListener(_listener);
    manager2 = Sheet.shared.managerNonNull<T2>()..addListener(_listener);
    manager3 = Sheet.shared.managerNonNull<T3>()..addListener(_listener);
  }

  @override
  void dispose() {
    manager.removeListener(_listener);
    manager2.removeListener(_listener);
    manager3.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, manager.read(widget.name),
        manager2.read(widget.name2), manager3.read(widget.name3));
  }
}

class Sheet4Builder<T1, T2, T3, T4> extends StatefulWidget {
  const Sheet4Builder({
    Key? key,
    required this.builder,
    this.name,
    this.name2,
    this.name3,
    this.name4,
  }) : super(key: key);

  const Sheet4Builder.collapse({Key? key, required this.builder, this.name})
      : name2 = name,
        name3 = name,
        name4 = name,
        super(key: key);

  final Widget Function(
    BuildContext context,
    T1 sheet,
    T2 sheet2,
    T3 sheet3,
    T4 sheet4,
  ) builder;
  final String? name;
  final String? name2;
  final String? name3;
  final String? name4;

  @override
  @override
  State<StatefulWidget> createState() => Sheet4BuilderState<T1, T2, T3, T4>();
}

class Sheet4BuilderState<T1, T2, T3, T4>
    extends State<Sheet4Builder<T1, T2, T3, T4>> {
  late final SheetManager<T1> manager;
  late final SheetManager<T2> manager2;
  late final SheetManager<T3> manager3;
  late final SheetManager<T4> manager4;

  @override
  void initState() {
    super.initState();
    manager = Sheet.shared.managerNonNull<T1>()..addListener(_listener);
    manager2 = Sheet.shared.managerNonNull<T2>()..addListener(_listener);
    manager3 = Sheet.shared.managerNonNull<T3>()..addListener(_listener);
    manager4 = Sheet.shared.managerNonNull<T4>()..addListener(_listener);
  }

  @override
  void dispose() {
    manager.removeListener(_listener);
    manager2.removeListener(_listener);
    manager3.removeListener(_listener);
    manager4.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
        context,
        manager.read(widget.name),
        manager2.read(widget.name2),
        manager3.read(widget.name3),
        manager4.read(widget.name4));
  }
}
