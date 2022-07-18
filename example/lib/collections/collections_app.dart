/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/

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
    return SheetBuilder<AppStyle>(
      builder: (context, sheet) => MaterialApp(
        title: 'Sheet Demo',
        theme: sheet.theme,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SheetThemeTextInUse<MyHomePage, AppStyle, AppText> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text.title, style: style.appbarTitleText),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text.sectionTitle, style: style.titleText),
            const Divider(),
            Row(children: [
              Text(text.themeMode, style: style.bodyText),
              const Spacer(),
              CupertinoSwitch(
                  value: style.brightness == Brightness.dark,
                  onChanged: (value) {
                    Sheet.apply<AppStyle>(value ? 'dart' : 'default');
                  }),
            ]),
            Row(children: [
              Text(text.languageMode, style: style.bodyText),
              const Spacer(),
              CupertinoSwitch(
                  value: text.locale == const Locale('vi_VI'),
                  onChanged: (value) {
                    Sheet.apply<AppText>(value ? 'vi' : 'default');
                  }),
            ]),
            const Divider(),
            Text(text.components, style: style.subTitleText),
            ExpansionTile(
              title: Text(text.componentsInitialization,
                  style: style.expansionTitle.textStyle),
              textColor: style.expansionTitle.value.value2,
              collapsedTextColor: style.expansionTitle.value.value1,
              children: const [SourcePreview(path: 'collections/init.md')],
            ),
            ExpansionTile(
              title: Text(text.componentsUsing,
                  style: style.expansionTitle.textStyle),
              textColor: style.expansionTitle.value.value2,
              collapsedTextColor: style.expansionTitle.value.value1,
              children: const [SourcePreview(path: 'collections/using.md')],
            ),
            ExpansionTile(
              title: Text(text.componentsExtension,
                  style: style.expansionTitle.textStyle),
              textColor: style.expansionTitle.value.value2,
              collapsedTextColor: style.expansionTitle.value.value1,
              children: const [SourcePreview(path: 'collections/extension.md')],
            ),
          ],
        ),
      ),
    );
  }
}
