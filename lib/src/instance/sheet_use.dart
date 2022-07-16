/*
 Created by Thanh Son on 15/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';

import '../../flutter_sheet.dart';

mixin SheetCollectionsUse<S extends StatefulWidget, T> on State<S> {
  String? get sheetName => null;

  T get sheet => readSheet(sheetName);

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

  void onSheetChange() {
    setState(() {});
  }
}

mixin Sheet2CollectionsUse<S extends StatefulWidget, T1, T2> on State<S> {
  String? get sheetName => null;

  String? get sheetName2 => sheetName;

  T1 get sheet => readSheet<T1>(sheetName);

  T2 get sheet2 => readSheet<T2>(sheetName2);

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

  void onSheetChange() {
    setState(() {});
  }
}

mixin Sheet3CollectionsUse<S extends StatefulWidget, T1, T2, T3> on State<S> {
  String? get sheetName => null;

  String? get sheetName2 => sheetName;

  String? get sheetName3 => sheetName;

  T1 get sheet => readSheet<T1>(sheetName);

  T2 get sheet2 => readSheet<T2>(sheetName2);

  T3 get sheet3 => readSheet<T3>(sheetName3);

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

  void onSheetChange() {
    setState(() {});
  }
}

mixin Sheet4CollectionsUse<S extends StatefulWidget, T1, T2, T3, T4>
    on State<S> {
  String? get sheetName => null;

  String? get sheetName2 => sheetName;

  String? get sheetName3 => sheetName;

  String? get sheetName4 => sheetName;

  T1 get sheet => readSheet<T1>(sheetName);

  T2 get sheet2 => readSheet<T2>(sheetName2);

  T3 get sheet3 => readSheet<T3>(sheetName3);

  T4 get sheet4 => readSheet<T4>(sheetName4);

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

  void onSheetChange() {
    setState(() {});
  }
}

mixin SheetThemeTextUse<S extends StatefulWidget, T1, T2> on State<S> {
  String? get styleName => null;

  String? get textName => styleName;

  T1 get style => readSheet<T1>(styleName);

  T2 get text => readSheet<T2>(textName);

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

  void onSheetChange() {
    setState(() {});
  }
}
