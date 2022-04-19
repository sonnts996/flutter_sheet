import 'package:example/button.dart';
import 'package:example/stylesheet/theme.stylesheet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stylesheet/flutter_stylesheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StyleSheetProvider<DefaultStyle>(
      createSheets: {
        'default': () => DefaultStyle(),
        'red': () => DefaultStyle(primaryColor: Colors.red),
        'blue': () => DefaultStyle(primaryColor: Colors.blue),
      },
      hotReload: kDebugMode,
      child: StyleSheetConsumer<DefaultStyle>(
          // stylesheet: 'default',
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
    with StyleSheetUsing<MyHomePage> {
  final stylesheet = <String>['default', 'red', 'blue'];
  int index = 0;

  int get nextIndex {
    index++;
    if (index < stylesheet.length) {
      return index;
    }
    index = 0;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            getStyle<DefaultStyle>().find('appbar.leading').call(false),
        title: Text(
          widget.title,
          style: getStyle<DefaultStyle>().find<TextStyle>('appbar.titleStyle'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            AppButton(
                text: 'Change Style',
                onPressed: () {
                  applyStyle<DefaultStyle>(stylesheet[nextIndex]);
                }),
          ],
        ),
      ),
    );
  }
}
