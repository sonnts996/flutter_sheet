/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/foundation.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

import '../../stylesheet/app_style.dart';
import '../../text/app_text.dart';

void init(){
  Sheet.setup(hotReload: kDebugMode);
  Sheet.registerLazyCollection<AppStyle>({
    'default': () => AppStyle(),
    'dart': () => AppDartStyle(),
  });
  Sheet.registerLazyCollection<AppText>({
    'default': () => const AppText(),
    'vi': () => const AppText(),
  });
}