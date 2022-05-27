/*
 Created by Thanh Son on 5/24/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../flutter_sheet.dart';

class MultiSheetProvider extends MultiProvider {
  MultiSheetProvider(
      {Key? key, required List<SheetProvider> providers, required Widget child})
      : super(
          key: key,
          providers: providers,
          child: child,
        );
}
