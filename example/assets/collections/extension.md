If you want to change sheet value as soon as call **Sheet.apply**:

In StatefulWidget, use:

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

other Widget, use:

```dart

SheetBuilder<AppStyle>(builder: (context, sheet) {

    ...
    sheet.backgroundColor
    ...
}),
```