## Getting started

Add dependency to your pubspec.yaml:

```yaml
flutter_sheet: 'any'
```

## Usage

- Import packages:

```dart
import 'package:flutter_sheet/flutter_sheet.dart';
```

## SheetManager using collections

### Initialization

```dart

import 'package:flutter/foundation.dart';
import 'package:flutter_sheet/flutter_sheet.dart';
import '../../stylesheet/app_style.dart';
import '../../text/app_text.dart';

void init(){
  Sheet.setup(hotReload: kDebugMode);
  Sheet.registerLazyCollection<AppStyle>({
    'default': () => AppStyle(),
    'dart': () => AppDartStyle(),
  });
  Sheet.registerLazyCollection<AppText>({
    'default': () => const AppText(),
    'vi': () => const AppText(),
  });
}
```
### Using

- Read AppStyle with current sheet

```dart

Sheet.read<AppStyle>().backgroundColor;
```
or with special sheet

```dart

Sheet.read<AppStyle>('dart').backgroundColor;
```

- Change current sheet

```dart

Sheet.apply<AppStyle>('dart');
```

### Extension

If you want to change sheet value as soon as call **Sheet.apply**:

- In StatefulWidget, use:

```dart

class _MyHomePageState extends State<MyHomePage>
    with SheetCollectionsUse<MyHomePage, AppStyle> {

    ...
    sheet.backgroundColor
    // or
    readSheet('dart').backgroundColor
    ...
}
```

- Other Widget, use:

```dart

SheetBuilder<AppStyle>(builder: (context, sheet) {

    ...
    sheet.backgroundColor
    ...
}),
```

## SheetManager using Providers

### Initialization

```dart


class ProvidersApp extends StatelessWidget {
  const CollectionsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiSheetProvider(
      createSheets: {
        'default': [
          CreatorModel(() => AppStyle()),
          CreatorModel(() => const AppText())
        ],
        'dart': [CreatorModel(() => AppDartStyle())],
        'vi': [CreatorModel(() => AppTextVi())]
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
```

### Using

Read AppStyle with current sheet

```dart

SheetProvider.of<AppStyle>(context).backgroundColor;
```
or with special sheet

```dart

SheetProvider.of<AppStyle>(context, 'dart').backgroundColor;
```

Change current sheet

```dart

SheetProvider.apply<AppStyle>(context, 'dart');
```

### Extension

If you want to change sheet value as soon as call **Sheet.apply**:

In StatefulWidget, use:

```dart

class _MyHomePageState extends State<MyHomePage>
    with MultiSheetProviderInUse<MyHomePage> {

    ...
    sheet<AppStyle>().backgroundColor
    // or
    readSheet<AppStyle>('dart').backgroundColor
    ...
}
```

other Widget, use:

```dart

SheetConsumer<AppStyle>(builder: (context, sheet, child) {

    ...
    sheet.backgroundColor
    ...
}),
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/sonnts996/flutter_sheet/issues).