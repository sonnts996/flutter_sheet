/*
 Created by Thanh Son on 6/1/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

class AppText extends XText {
  const AppText([Locale locale = const Locale('en_EN')]) : super(locale);

  final String title = 'Flutter Sheet Demo';

  final String sectionTitle = 'SheetManager using collections';

  final String providerSectionTitle = 'SheetManager using Providers';

  final String themeMode = 'Theme mode';

  final String languageMode = 'Language';

  final String components = 'Components';

  final String componentsInitialization = 'Initialization';

  final String componentsUsing = 'Using';

  final String componentsExtension = 'Extension';
}

class AppTextVi extends AppText {
  const AppTextVi() : super(const Locale('vi_VI'));

  @override
  // TODO: implement sectionTitle
  String get sectionTitle => 'SheetManager sử dụng Collections';

  @override
  // TODO: implement providerSectionTitle
  String get providerSectionTitle => 'SheetManager sử dụng Providers';

  @override
  // TODO: implement themeMode
  String get themeMode => 'Chủ đề';

  @override
  // TODO: implement languageMode
  String get languageMode => 'Ngôn ngữ';

  @override
  // TODO: implement components
  String get components => 'Thành phần';

  @override
  // TODO: implement componentsInitialization
  String get componentsInitialization => 'Khởi tạo';

  @override
  // TODO: implement componentsUsing
  String get componentsUsing => 'Sử dụng';

  @override
  // TODO: implement componentsExtension
  String get componentsExtension => 'Tiện ích mở rộng';
}
