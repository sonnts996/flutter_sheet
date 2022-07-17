Read AppStyle with current sheet

```dart

Sheet.read<AppStyle>().backgroundColor;
```
or with special sheet

```dart

Sheet.read<AppStyle>('dart').backgroundColor;
```

Change current sheet

```dart

Sheet.apply<AppStyle>('dart');
```