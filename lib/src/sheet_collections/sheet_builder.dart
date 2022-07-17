/*
 Created by Thanh Son on 14/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';

import '../../flutter_sheet.dart';

///
/// Return a builder widget, it will be rebuild when you call [apply]
/// [T] is you sheet type.
class SheetBuilder<T> extends StatefulWidget {
  const SheetBuilder({Key? key, required this.builder, this.name})
      : super(key: key);

  /// a builder your widget
  final Widget Function(BuildContext context, T sheet) builder;

  /// a sheet apply for this widget, null if you want to use current sheet
  final String? name;

  @override
  @override
  State<StatefulWidget> createState() => SheetBuilderState<T>();
}

///
/// Sheet Builder State.
class SheetBuilderState<T> extends State<SheetBuilder<T>> {
  late final SheetManager<T> _manager;

  @override
  void initState() {
    super.initState();
    _manager = Sheet.shared.managerNonNull<T>()..addListener(_listener);
  }

  @override
  void dispose() {
    _manager.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _manager.read(widget.name));
  }
}

///
/// Return a builder widget, it will be rebuild when you call [apply]
/// [T1], [T2] is you sheet type.
class Sheet2Builder<T1, T2> extends StatefulWidget {
  const Sheet2Builder({Key? key, required this.builder, this.name, this.name2})
      : super(key: key);

  /// SheetBuilder with all sheet name is [name]
  const Sheet2Builder.collapse({Key? key, required this.builder, this.name})
      : name2 = name,
        super(key: key);

  /// a builder your widget
  final Widget Function(BuildContext context, T1 sheet, T2 sheet2) builder;

  /// a sheet of [T1] apply for this widget, null if you want to use current sheet
  final String? name;

  /// a sheet of [T2] apply for this widget, null if you want to use current sheet
  final String? name2;

  @override
  @override
  State<StatefulWidget> createState() => Sheet2BuilderState<T1, T2>();
}

class Sheet2BuilderState<T1, T2> extends State<Sheet2Builder<T1, T2>> {
  late final SheetManager<T1> _manager;
  late final SheetManager<T2> _manager2;

  @override
  void initState() {
    super.initState();
    _manager = Sheet.shared.managerNonNull<T1>()..addListener(_listener);
    _manager2 = Sheet.shared.managerNonNull<T2>()..addListener(_listener);
  }

  @override
  void dispose() {
    _manager.removeListener(_listener);
    _manager2.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
        context, _manager.read(widget.name), _manager2.read(widget.name2));
  }
}

///
/// Return a builder widget, it will be rebuild when you call [apply]
/// [T1], [T2], [T3] is you sheet type.
class Sheet3Builder<T1, T2, T3> extends StatefulWidget {
  const Sheet3Builder(
      {Key? key, required this.builder, this.name, this.name2, this.name3})
      : super(key: key);

  /// SheetBuilder with all sheet name is [name]
  const Sheet3Builder.collapse({Key? key, required this.builder, this.name})
      : name2 = name,
        name3 = name,
        super(key: key);

  /// a builder your widget
  final Widget Function(BuildContext context, T1 sheet, T2 sheet2, T3 sheet3)
      builder;

  /// a sheet of [T1] apply for this widget, null if you want to use current sheet
  final String? name;

  /// a sheet of [T2] apply for this widget, null if you want to use current sheet
  final String? name2;

  /// a sheet of [T3] apply for this widget, null if you want to use current sheet
  final String? name3;

  @override
  @override
  State<StatefulWidget> createState() => Sheet3BuilderState<T1, T2, T3>();
}

class Sheet3BuilderState<T1, T2, T3> extends State<Sheet3Builder<T1, T2, T3>> {
  late final SheetManager<T1> _manager;
  late final SheetManager<T2> _manager2;
  late final SheetManager<T3> _manager3;

  @override
  void initState() {
    super.initState();
    _manager = Sheet.shared.managerNonNull<T1>()..addListener(_listener);
    _manager2 = Sheet.shared.managerNonNull<T2>()..addListener(_listener);
    _manager3 = Sheet.shared.managerNonNull<T3>()..addListener(_listener);
  }

  @override
  void dispose() {
    _manager.removeListener(_listener);
    _manager2.removeListener(_listener);
    _manager3.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _manager.read(widget.name),
        _manager2.read(widget.name2), _manager3.read(widget.name3));
  }
}

///
/// Return a builder widget, it will be rebuild when you call [apply]
/// [T1], [T2], [T3], [T4] is you sheet type.
class Sheet4Builder<T1, T2, T3, T4> extends StatefulWidget {
  const Sheet4Builder({
    Key? key,
    required this.builder,
    this.name,
    this.name2,
    this.name3,
    this.name4,
  }) : super(key: key);

  /// SheetBuilder with all sheet name is [name]
  const Sheet4Builder.collapse({Key? key, required this.builder, this.name})
      : name2 = name,
        name3 = name,
        name4 = name,
        super(key: key);

  /// a builder your widget
  final Widget Function(
    BuildContext context,
    T1 sheet,
    T2 sheet2,
    T3 sheet3,
    T4 sheet4,
  ) builder;

  /// a sheet of [T1] apply for this widget, null if you want to use current sheet
  final String? name;

  /// a sheet of [T2] apply for this widget, null if you want to use current sheet
  final String? name2;

  /// a sheet of [T3] apply for this widget, null if you want to use current sheet
  final String? name3;

  /// a sheet of [T4] apply for this widget, null if you want to use current sheet
  final String? name4;

  @override
  @override
  State<StatefulWidget> createState() => Sheet4BuilderState<T1, T2, T3, T4>();
}

class Sheet4BuilderState<T1, T2, T3, T4>
    extends State<Sheet4Builder<T1, T2, T3, T4>> {
  late final SheetManager<T1> _manager;
  late final SheetManager<T2> _manager2;
  late final SheetManager<T3> _manager3;
  late final SheetManager<T4> _manager4;

  @override
  void initState() {
    super.initState();
    _manager = Sheet.shared.managerNonNull<T1>()..addListener(_listener);
    _manager2 = Sheet.shared.managerNonNull<T2>()..addListener(_listener);
    _manager3 = Sheet.shared.managerNonNull<T3>()..addListener(_listener);
    _manager4 = Sheet.shared.managerNonNull<T4>()..addListener(_listener);
  }

  @override
  void dispose() {
    _manager.removeListener(_listener);
    _manager2.removeListener(_listener);
    _manager3.removeListener(_listener);
    _manager4.removeListener(_listener);
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
        context,
        _manager.read(widget.name),
        _manager2.read(widget.name2),
        _manager3.read(widget.name3),
        _manager4.read(widget.name4));
  }
}
