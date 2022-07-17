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
      Map<String, List<CreatorModel>> data = {
        "default": [
          CreatorModel<A>(() => A()),
          CreatorModel<B>(() => B()),
          CreatorModel<A1>(() => A1()),
          CreatorModel<A2>(() => A2()),
        ],
        "test1": [
          CreatorModel<A>(() => A1()),
          CreatorModel<B>(() => B()),
          CreatorModel<C>(() => C()),
          CreatorModel<A2>(() => A2()),
        ],
        "test2": [
          CreatorModel<B>(() => B()),
          CreatorModel<C>(() => C()),
        ],
        "test3": [
          CreatorModel<B>(() => B()),
          CreatorModel<C>(() => C()),
        ],
      };

      Map<Type, Map<String, CreatorModel>> result = {};

      for (var element in data.keys) {
        List<CreatorModel> creators = data[element]!;
        for (var elem in creators) {
          final map = result[elem.type] ?? {};
          map[element] = elem;
          result[elem.type] = map;
        }
      }
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
