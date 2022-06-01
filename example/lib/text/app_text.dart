/*
 Created by Thanh Son on 6/1/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class AppText {
  const AppText(
      {this.button = 'Change Style',
      this.buttonLang = 'Change Language',
      this.title = 'Sheet Demo App'});

  final String button;

  final String buttonLang;

  final String title;
}

class AppTextVi extends AppText {
  @override
  String get button => 'Thay đổi chủ đề';

  @override
  String get buttonLang => 'Thay đôi ngôn ngữ';

  @override
  String get title => 'Sheet Demo App Vi';
}

