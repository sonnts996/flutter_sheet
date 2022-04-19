import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_stylesheet/flutter_stylesheet.dart';

class TestSheet extends FlutterStyleSheet {
  const TestSheet(this.contentTest);

  final String contentTest;

  @override
  // TODO: implement styles
  Map<String, dynamic> get styles => {
        "contentTest": contentTest,
        'some': {
          'thing': 0,
          'to': {
            'test': 1,
          }
        }
      };

  @override
  // TODO: implement theme
  ThemeData get theme => throw UnimplementedError();
}

void main() {
  test('sheet manager', () {
    final sheetManager = StyleSheetManager<TestSheet>({
      'default': () => const TestSheet('default'),
      'test1': () => const TestSheet('test1'),
      'test2': () => const TestSheet('test2'),
    });
    expect(sheetManager.current, 'default');
    sheetManager.apply('test1');
    expect(sheetManager.current, 'test1');
    expect(sheetManager.get(), const TestSheet('test1'));
    expect(sheetManager.get('test2'), const TestSheet('test2'));
    expect(sheetManager.get(), const TestSheet('test1'));
    expect(sheetManager.get().find('some.thing'), 0);
    expect(sheetManager.get().find<String>('some.to.test'), 1.0);
  });
}
