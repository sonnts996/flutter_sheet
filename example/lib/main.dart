import 'package:example/button.dart';
import 'package:example/stylesheet/theme.stylesheet.dart';
import 'package:example/text/app_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

void main() {
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
        'red': [
          SheetCreator<DefaultStyle>(
              () => const DefaultStyle(primaryColor: Colors.red))
        ],
        'blue': [
          SheetCreator<DefaultStyle>(
              () => const DefaultStyle(primaryColor: Colors.blue))
        ],
        'vi': [
          SheetCreator<AppText>(() => const AppText(
              button: 'Thay đổi chủ đề',
              title: 'Thay đôi ngôn ngữ',
              buttonLang: 'Sheet Demo App Vi'))
        ],
        // 'num': [SheetCreator<AppText>(() => AppTextNum())],
      },
      hotReload: kDebugMode,
      child: SheetConsumer<DefaultStyle>(
          // sheet_provider: 'default',
          builder: (context, sheet, child) => MaterialApp(
                title: 'Flutter Demo',
                theme: sheet.theme,
                home: const MyHomePage(title: 'Flutter Demo Home Page'),
              )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SheetUse<MyHomePage, AppText> {
  final sheet = <String>['default', 'red', 'blue'];
  final sheetLang = <String>['default', 'vi'];
  int index = 0;
  int indexLang = 0;

  int get nextIndex {
    index++;
    if (index < sheet.length) {
      return index;
    }
    index = 0;
    return 0;
  }

  int get nextIndexLang {
    indexLang++;
    if (indexLang < sheetLang.length) {
      return indexLang;
    }
    indexLang = 0;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SheetProvider.of<DefaultStyle>(context).backIcon(false),
        title: Text(
          SheetProvider.of<AppText>(context).title,
          style: SheetProvider.of<DefaultStyle>(context).titleStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: SheetProvider.of<DefaultStyle>(context).captionStyle,
            ),
            SheetConsumer<DefaultStyle>(
                builder: (context, sheet, child) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Visibility(
                            visible: sheet.primary == Colors.indigo,
                            child: Icon(
                              sheet.checkIcon,
                              color: sheet.checkIconColor,
                            ),
                          ),
                          backgroundColor: Colors.indigo,
                        ),
                        SizedBox(width: sheet.checkIconSpace),
                        CircleAvatar(
                          child: Visibility(
                              visible: sheet.primary == Colors.red,
                              child: Icon(
                                sheet.checkIcon,
                                color: sheet.checkIconColor,
                              )),
                          backgroundColor: Colors.red,
                        ),
                        SizedBox(width: sheet.checkIconSpace),
                        CircleAvatar(
                          child: Visibility(
                            visible: sheet.primary == Colors.blue,
                            child: Icon(
                              sheet.checkIcon,
                              color: sheet.checkIconColor,
                            ),
                          ),
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    )),
            AppButton(
                text: SheetProvider.of<AppText>(context).button,
                onPressed: () {
                  SheetProvider.apply<DefaultStyle>(context, sheet[nextIndex]);
                }),
            AppButton(
                text: SheetProvider.of<AppText>(context).buttonLang,
                onPressed: () {
                  applySheet(sheetLang[nextIndexLang]);
                }),
          ],
        ),
      ),
    );
  }
}
