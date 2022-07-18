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