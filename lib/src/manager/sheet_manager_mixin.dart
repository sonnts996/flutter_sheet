/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:meta/meta.dart';

///
/// a lazy create sheet instance,
/// it will be not create the instance when you register,
/// instead, when you call read or apply, the instance will be create.
typedef Creator<T> = T Function();

mixin SheetManagerMixin<T> {
  ///
  /// Change [currentSheet] by [sheet], if the new sheet exists.
  void apply(String sheet);

  ///
  /// Return a [currentSheet] if [sheet] == null, else return a sheet with name [sheet],
  /// throw [SheetNotFoundException] if not found [sheet] name
  T read(String? sheet);

  ///
  /// add new [sheet] with a [instance] value,
  /// don't use it outside library package
  /// only sheet collections can be use this method
  /// throw [SheetExistsException] if [sheet] exists
  @internal
  void add(String sheet, T instance);

  ///
  /// remove a exists [sheet],
  /// don't use it outside library package
  /// only sheet collections can be use this method
  @internal
  void remove(String sheet);

  ///
  /// add new [sheet] with a [createSheet] value,
  /// don't use it outside library package
  /// only sheet collections can be use this method
  /// throw [SheetExistsException] if [sheet] exists
  @internal
  void addLazy(String sheet, Creator<T> createSheet);

  ///
  /// clear all sheet in manager, after that, you must be add new sheet to continue use
  /// don't use it outside library package
  /// only sheet collections can be use this method
  @internal
  void clear();

  ///
  /// return true if [sheet] exists in manager
  bool contains(String sheet);
}
