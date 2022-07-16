import 'package:example/code_example/instance/init.dart';
import 'package:example/stylesheet/app_style.dart';
import 'package:example/stylesheet/theme.stylesheet.dart';
import 'package:example/text/app_text.dart';
import 'package:example/widget/source_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiSheetProvider(
      createSheets: {
        'default': [
          SheetCreator<AppText>(() => const AppText()),
          SheetCreator<DefaultStyle>(() => const DefaultStyle()),
        ],
        'dart': [SheetCreator<DefaultStyle>(() => const DarkStyle())],
        'vi': [
          SheetCreator<AppText>(() => const AppText(
              button: 'Thay đổi chủ đề',
              title: 'Thay đôi ngôn ngữ',
              buttonLang: 'Sheet Demo App Vi'))
        ],
      },
      hotReload: kDebugMode,
      child: SheetConsumer<DefaultStyle>(
          builder: (context, sheet, child) => MaterialApp(
                title: 'Sheet Demo',
                theme: sheet.theme,
                home: const MyHomePage(),
              )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with MultiSheetUse<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          currentSheet<AppText>().title,
          style: currentSheet<DefaultStyle>().titleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('SheetManager using Provider'),
            ExpansionTile(title: Text('Display')),
            ExpansionTile(title: Text('Display')),
            const Divider(),
            InstanceManager(),
          ],
        ),
      ),
    );
  }
}

class InstanceManager extends StatelessWidget {
  const InstanceManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Sheet2Builder<AppStyle, AppText>(
        builder: (context, style, text) => Material(
          color: style.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    text.sectionTitle,
                    style: style.titleText,
                  ),
                  Row(children: [
                    Text(
                      text.themeMode,
                      style: style.bodyText,
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        value: style.themeMode == ThemeMode.dark,
                        onChanged: (value) {
                          Sheet.apply<AppStyle>(value ? 'dart' : 'default');
                        }),
                  ]),
                  const Divider(),
                  Text(text.components, style: style.subTitleText),
                  const ExpansionTile(
                    title: Text('Sheet'),
                    children: [
                      SourcePreview(path: 'lib/code_example/instance/init.dart')
                    ],
                  )
                ]),
          ),
        ),
      );
}
