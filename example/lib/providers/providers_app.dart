/*
 Created by Thanh Son on 18/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
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

class ProvidersApp extends StatelessWidget {
  const ProvidersApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiSheetProvider(
      createSheets: {
        'default': [
          CreatorModel<AppStyle>(() => AppStyle()),
          CreatorModel<AppText>(() => const AppText())
        ],
        'dart': [CreatorModel<AppStyle>(() => AppDartStyle())],
        'vi': [CreatorModel<AppText>(() => const AppTextVi())]
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with MultiSheetProviderInUse<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sheet<AppText>().title,
            style: sheet<AppStyle>().appbarTitleText),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(sheet<AppText>().providerSectionTitle,
                style: sheet<AppStyle>().titleText),
            const Divider(),
            Row(children: [
              Text(sheet<AppText>().themeMode,
                  style: sheet<AppStyle>().bodyText),
              const Spacer(),
              CupertinoSwitch(
                  value: sheet<AppStyle>().brightness == Brightness.dark,
                  onChanged: (value) {
                    applySheet<AppStyle>(value ? 'dart' : 'default');
                  }),
            ]),
            Row(children: [
              Text(sheet<AppText>().languageMode,
                  style: sheet<AppStyle>().bodyText),
              const Spacer(),
              CupertinoSwitch(
                  value: sheet<AppText>().locale == const Locale('vi_VI'),
                  onChanged: (value) {
                    applySheet<AppText>(value ? 'vi' : 'default');
                  }),
            ]),
            const Divider(),
            Text(sheet<AppText>().components,
                style: sheet<AppStyle>().subTitleText),
            ExpansionTile(
              title: Text(sheet<AppText>().componentsInitialization,
                  style: sheet<AppStyle>().expansionTitle.textStyle),
              textColor: sheet<AppStyle>().expansionTitle.value.value2,
              collapsedTextColor: sheet<AppStyle>().expansionTitle.value.value1,
              children: const [SourcePreview(path: 'providers/init.md')],
            ),
            ExpansionTile(
              title: Text(sheet<AppText>().componentsUsing,
                  style: sheet<AppStyle>().expansionTitle.textStyle),
              textColor: sheet<AppStyle>().expansionTitle.value.value2,
              collapsedTextColor: sheet<AppStyle>().expansionTitle.value.value1,
              children: const [SourcePreview(path: 'providers/using.md')],
            ),
            ExpansionTile(
              title: Text(sheet<AppText>().componentsExtension,
                  style: sheet<AppStyle>().expansionTitle.textStyle),
              textColor: sheet<AppStyle>().expansionTitle.value.value2,
              collapsedTextColor: sheet<AppStyle>().expansionTitle.value.value1,
              children: const [SourcePreview(path: 'providers/extension.md')],
            ),
          ],
        ),
      ),
    );
  }
}
