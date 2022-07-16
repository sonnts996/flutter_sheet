/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import '../../../flutter_sheet.dart';

typedef CreateSheet<T> = T Function();

mixin SheetManagerMixin<T> {
  void apply(String sheet);

  T read(String? sheet);

  void add(String sheet, T instance);

  void remove(String sheet);

  void addLazy(String sheet, CreateSheet<T> createSheet);

  void clear();

  bool contains(String sheet);
}

class SheetCreator<T> {
  const SheetCreator(this.createSheet);

  final CreateSheet<T> createSheet;

  SheetProvider<T> createProvider(
    bool hotReload,
    Map<String, CreateSheet<T>> createSheets,
  ) =>
      SheetProvider<T>(
        createSheets: createSheets,
        hotReload: hotReload,
      );

  Map<String, CreateSheet<T>> cast(Map<String, SheetCreator> map) =>
      map.map((key, value) => MapEntry<String, CreateSheet<T>>(
          key, (value as SheetCreator<T>).createSheet));

  @override
  String toString() => T.toString();

  Type get type => T;
}
