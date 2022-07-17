/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:meta/meta.dart';

typedef Creator<T> = T Function();

mixin SheetManagerMixin<T> {
  void apply(String sheet);

  T read(String? sheet);

  @internal
  void add(String sheet, T instance);

  @internal
  void remove(String sheet);

  @internal
  void addLazy(String sheet, Creator<T> createSheet);

  @internal
  void clear();

  bool contains(String sheet);
}