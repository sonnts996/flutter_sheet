/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter_stylesheet/src/stylesheet/stylesheet.dart';

typedef CreateSheet<T extends FlutterStyleSheet> = T Function();

mixin SheetManager<T extends FlutterStyleSheet> {
  void apply(String stylesheet);

  T get(String? stylesheet);
}

