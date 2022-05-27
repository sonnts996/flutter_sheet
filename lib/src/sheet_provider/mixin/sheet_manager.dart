/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/

typedef CreateSheet<T> = T Function();

mixin SheetManagerMixin<T> {
  void apply(String sheet);

  T get(String? sheet);
}
