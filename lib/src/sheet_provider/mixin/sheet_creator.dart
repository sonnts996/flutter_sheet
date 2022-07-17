/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import '../../../flutter_sheet.dart';
import '../../manager/sheet_manager_mixin.dart';

class CreatorModel<T> {
  const CreatorModel(this.createSheet);

  final Creator<T> createSheet;

  SheetProvider<T> createProvider(
    bool hotReload,
    Map<String, Creator<T>> createSheets,
  ) =>
      SheetProvider<T>(
        createSheets: createSheets,
        hotReload: hotReload,
      );

  Map<String, Creator<T>> cast(Map<String, CreatorModel> map) =>
      map.map((key, value) => MapEntry<String, Creator<T>>(
          key, (value as CreatorModel<T>).createSheet));

  @override
  String toString() => T.toString();

  Type get type => T;
}
