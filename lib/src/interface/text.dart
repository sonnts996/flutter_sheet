/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:flutter/rendering.dart';


///
/// a model for appText text
/// you can extends it for your custom not
///
class XText {
  const XText(this.locale);

  /// locale for model
  final Locale locale;
}

///
/// TextModel for widget contains title and content
class XTitle {
  const XTitle({
    this.title = '',
    this.subTitle = '',
    this.content = '',
  });

  ///
  /// Title text
  final String title;

  ///
  /// SubTitle text
  final String subTitle;

  /// Content text
  final String content;
}

///
/// TextModel for a common dialog
class XDialog {
  const XDialog(
      {this.title = '',
      this.message = '',
      this.button1 = '',
      this.button2 = '',
      this.button3 = ''});

  ///
  /// Title text
  final String title;

  ///
  /// Message text
  final String message;

  ///
  /// button1 text
  final String button1;

  ///
  /// button2 text
  final String button2;

  ///
  /// button3 text
  final String button3;
}
