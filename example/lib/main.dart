import 'package:example/button.dart';
import 'package:example/stylesheet/theme.stylesheet.dart';
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
    return SheetProvider<DefaultStyle>(
      createSheets: {
        'default': () => const DefaultStyle(),
        'red': () => const DefaultStyle(primaryColor: Colors.red),
        'blue': () => const DefaultStyle(primaryColor: Colors.blue),
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

class _MyHomePageState extends State<MyHomePage> with SheetUse<MyHomePage, DefaultStyle> {
  final sheet = <String>['default', 'red', 'blue'];
  int index = 0;

  int get nextIndex {
    index++;
    if (index < sheet.length) {
      return index;
    }
    index = 0;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: getSheet().backIcon(false),
        title: Text(
          widget.title,
          style: getSheet().titleStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: getSheet().captionStyle,
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
                text: 'Change Style',
                onPressed: () {
                  applySheet(sheet[nextIndex]);
                }),
          ],
        ),
      ),
    );
  }
}
