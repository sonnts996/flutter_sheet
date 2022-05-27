import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';
import 'package:flutter_test/flutter_test.dart';

class TestSheet extends XStyle {
  const TestSheet(this.contentTest) : super(swatch: Colors.blue);

  final String contentTest;
}

void main() {
  test('sheet manager', () {
    final sheetManager = SheetManager<TestSheet>({
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
  });
}
