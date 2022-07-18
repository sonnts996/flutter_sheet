import 'package:example/providers/providers_app.dart';
import 'package:example/stylesheet/app_style.dart';
import 'package:example/text/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

import 'collections/collections_app.dart';

void main() {
  Sheet.setup(hotReload: kDebugMode);
  Sheet.registerLazyCollection<AppStyle>({
    'default': () => AppStyle(),
    'dart': () => AppDartStyle(),
  });
  Sheet.registerLazyCollection<AppText>({
    'default': () => const AppText(),
    'vi': () => const AppText(),
  });
  runApp(const ProvidersApp());
  // runApp(const CollectionsApp());
}
