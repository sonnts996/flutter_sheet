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
    expect(sheetManager.read(), const TestSheet('test1'));
    expect(sheetManager.read('test2'), const TestSheet('test2'));
    expect(sheetManager.read(), const TestSheet('test1'));
  });

  test(
    'multi creator',
    () {
      Map<String, List<SheetCreator>> data = {
        "default": [
          SheetCreator<A>(() => A()),
          SheetCreator<B>(() => B()),
          SheetCreator<A1>(() => A1()),
          SheetCreator<A2>(() => A2()),
        ],
        "test1": [
          SheetCreator<A>(() => A1()),
          SheetCreator<B>(() => B()),
          SheetCreator<C>(() => C()),
          SheetCreator<A2>(() => A2()),
        ],
        "test2": [
          SheetCreator<B>(() => B()),
          SheetCreator<C>(() => C()),
        ],
        "test3": [
          SheetCreator<B>(() => B()),
          SheetCreator<C>(() => C()),
        ],
      };

      Map<Type, Map<String, SheetCreator>> result = {};

      data.keys.forEach((element) {
        List<SheetCreator> creators = data[element]!;
        creators.forEach((elem) {
          final map = result[elem.type] ?? {};
          map[element] = elem;
          result[elem.type] = map;
        });
      });
      print(result);
    },
  );
}

class A {
  int value = 1;
}

class B {
  int value = 2;
}

class C {
  int value = 3;
}

class A1 extends A {
  int value1 = 1;
}

class A2 extends A {
  int value1 = 2;
}
