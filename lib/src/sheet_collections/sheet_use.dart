/*
 Created by Thanh Son on 15/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';

import '../../flutter_sheet.dart';

/// extension for [StatefulWidget] with [T] sheet,
/// auto rebuild when apply
mixin SheetCollectionInUse<S extends StatefulWidget, T> on State<S> {
  /// [T] sheet name use on this [StatefulWidget]
  String? get sheetName => null;

  /// current [T] sheet or [sheetName]
  T get sheet => readSheet(sheetName);

  /// read [T] sheet with sheet [name]
  T readSheet([String? name]) => Sheet.read<T>(name);

  @override
  void initState() {
    super.initState();
    Sheet.shared.managerNonNull<T>().addListener(onSheetChange);
  }

  @override
  void dispose() {
    Sheet.shared.managerNonNull<T>().removeListener(onSheetChange);
    super.dispose();
  }

  /// call on sheet apply
  void onSheetChange() {
    setState(() {});
  }
}

/// extension for [StatefulWidget] with [T1] and [T2] sheet,
/// auto rebuild when apply
mixin Sheet2CollectionsInUse<S extends StatefulWidget, T1, T2> on State<S> {
  /// [T1] sheet name use on this [StatefulWidget]
  String? get sheetName => null;

  /// [T2] sheet name use on this [StatefulWidget]
  String? get sheetName2 => null;

  /// current [T1] sheet or [sheetName]
  T1 get sheet => readSheet<T1>(sheetName);

  /// current [T2] sheet or [sheetName1]
  T2 get sheet2 => readSheet<T2>(sheetName2);

  /// read [T] sheet with sheet [name]
  T readSheet<T>([String? name]) => Sheet.read<T>(name);

  @override
  void initState() {
    super.initState();
    Sheet.shared.managerNonNull<T1>().addListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().addListener(onSheetChange);
  }

  @override
  void dispose() {
    Sheet.shared.managerNonNull<T1>().removeListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().removeListener(onSheetChange);
    super.dispose();
  }

  /// call on sheet apply
  void onSheetChange() {
    setState(() {});
  }
}

/// extension for [StatefulWidget] with [T1], [T2] and [T3] sheet,
/// auto rebuild when apply
mixin Sheet3CollectionsInUse<S extends StatefulWidget, T1, T2, T3> on State<S> {
  /// [T1] sheet name use on this [StatefulWidget]
  String? get sheetName => null;

  /// [T2] sheet name use on this [StatefulWidget]
  String? get sheetName2 => null;

  /// [T3] sheet name use on this [StatefulWidget]
  String? get sheetName3 => null;

  /// current [T1] sheet or [sheetName]
  T1 get sheet => readSheet<T1>(sheetName);

  /// current [T2] sheet or [sheetName2]
  T2 get sheet2 => readSheet<T2>(sheetName2);

  /// current [T3] sheet or [sheetName3]
  T3 get sheet3 => readSheet<T3>(sheetName3);

  /// read [T] sheet with sheet [name]
  T readSheet<T>([String? name]) => Sheet.read<T>(name);

  @override
  void initState() {
    super.initState();
    Sheet.shared.managerNonNull<T1>().addListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().addListener(onSheetChange);
    Sheet.shared.managerNonNull<T3>().addListener(onSheetChange);
  }

  @override
  void dispose() {
    Sheet.shared.managerNonNull<T1>().removeListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().removeListener(onSheetChange);
    Sheet.shared.managerNonNull<T3>().removeListener(onSheetChange);
    super.dispose();
  }

  /// call on sheet apply
  void onSheetChange() {
    setState(() {});
  }
}

/// extension for [StatefulWidget] with [T1], [T2], [T3] and [T4] sheet,
/// auto rebuild when apply
mixin Sheet4CollectionsInUse<S extends StatefulWidget, T1, T2, T3, T4>
    on State<S> {
  /// [T1] sheet name use on this [StatefulWidget]
  String? get sheetName => null;

  /// [T2] sheet name use on this [StatefulWidget]
  String? get sheetName2 => null;

  /// [T3] sheet name use on this [StatefulWidget]
  String? get sheetName3 => null;

  /// [T4] sheet name use on this [StatefulWidget]
  String? get sheetName4 => null;

  /// current [T1] sheet or [sheetName]
  T1 get sheet => readSheet<T1>(sheetName);

  /// current [T2] sheet or [sheetName2]
  T2 get sheet2 => readSheet<T2>(sheetName2);

  /// current [T3] sheet or [sheetName3]
  T3 get sheet3 => readSheet<T3>(sheetName3);

  /// current [T4] sheet or [sheetName4]
  T4 get sheet4 => readSheet<T4>(sheetName4);

  /// read [T] sheet with sheet [name]
  T readSheet<T>([String? name]) => Sheet.read<T>(name);

  @override
  void initState() {
    super.initState();
    Sheet.shared.managerNonNull<T1>().addListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().addListener(onSheetChange);
    Sheet.shared.managerNonNull<T3>().addListener(onSheetChange);
    Sheet.shared.managerNonNull<T4>().addListener(onSheetChange);
  }

  @override
  void dispose() {
    Sheet.shared.managerNonNull<T1>().removeListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().removeListener(onSheetChange);
    Sheet.shared.managerNonNull<T3>().removeListener(onSheetChange);
    Sheet.shared.managerNonNull<T4>().removeListener(onSheetChange);
    super.dispose();
  }

  /// call on sheet apply
  void onSheetChange() {
    setState(() {});
  }
}

/// extension for [StatefulWidget] with [T1] as Stylesheet, and [T2] as Text sheet,
/// auto rebuild when apply
mixin SheetThemeTextInUse<S extends StatefulWidget, T1, T2> on State<S> {
  /// [T1] stylesheet name
  String? get styleName => null;

  /// [T2] text sheet name
  String? get textName => null;

  /// current [T1] stylesheet or [styleName]
  T1 get style => readSheet<T1>(styleName);

  /// current [T2] text sheet or [textName]
  T2 get text => readSheet<T2>(textName);

  /// read [T] sheet with sheet [name]
  T readSheet<T>([String? name]) => Sheet.read<T>(name);

  @override
  void initState() {
    super.initState();
    Sheet.shared.managerNonNull<T1>().addListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().addListener(onSheetChange);
  }

  @override
  void dispose() {
    Sheet.shared.managerNonNull<T1>().removeListener(onSheetChange);
    Sheet.shared.managerNonNull<T2>().removeListener(onSheetChange);
    super.dispose();
  }

  /// call on sheet apply
  void onSheetChange() {
    setState(() {});
  }
}
