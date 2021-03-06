/*
 Created by Thanh Son on 5/24/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../flutter_sheet.dart';

///
/// Multi Provider of SheetProvider
/// can use 2 methods to declare sheet [Creator]
/// [createSheets] is a map with [sheetName] and [CreatorModel], it can be convert to List<SheetProvider>
/// [providers] is a list of Provider elements
class MultiSheetProvider extends MultiProvider {
  MultiSheetProvider(
      {Key? key,
      List<SheetProvider> providers = const [],
      Map<String, List<CreatorModel>> createSheets = const {},
      bool hotReload = false,
      required Widget child})
      : assert(providers.isNotEmpty || createSheets.isNotEmpty,
            "Cannot create an empty sheet!"),
        super(
          key: key,
          providers: [...providers, ..._provider(createSheets, hotReload)],
          child: child,
        );
}

List<SheetProvider> _provider(
    Map<String, List<CreatorModel>> map, bool hotReload) {
  Map<Type, Map<String, CreatorModel>> result = {};
  Map<Type, CreatorModel> creators = {};
  List<SheetProvider> providers = [];

  void extractKey(String data) {
    List<CreatorModel> _creators = map[data]!;
    for (int i = 0; i < _creators.length; i++) {
      final creator = _creators[i];
      final map = result[creator.type] ?? {};
      map[data] = creator;
      result[creator.type] = map;
      if (!creators.containsKey(creator.type)) {
        creators[creator.type] = creator;
      }
    }
  }

  map.keys.forEach(extractKey);

  for (int i = 0; i < creators.length; i++) {
    final key = creators.keys.elementAt(i);
    if (creators[key] != null) {
      providers.add(creators[key]!
          .createProvider(hotReload, creators[key]!.cast(result[key] ?? {})));
    }
  }
  return providers;
}
