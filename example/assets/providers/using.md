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