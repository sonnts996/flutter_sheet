```dart

import 'package:example/text/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

import '../stylesheet/app_style.dart';
import '../widget/source_preview.dart';

class CollectionsApp extends StatelessWidget {
  const CollectionsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiSheetProvider(
      createSheets: {
        'default': [
          CreatorModel(() => AppStyle()),
          CreatorModel(() => const AppText())
        ],
        'dart': [CreatorModel(() => AppDartStyle())],
        'vi': [CreatorModel(() => AppTextVi())]
      },
      child: SheetConsumer<AppStyle>(
        builder: (context, sheet, child) => MaterialApp(
          title: 'Sheet Demo',
          theme: sheet.theme,
          home: const MyHomePage(),
        ),
      ),
    );
  }
}
```