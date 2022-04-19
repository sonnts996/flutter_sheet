/*
 Created by Thanh Son on 4/19/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:flutter_stylesheet/src/exception/not_style_exception.dart';

mixin StyleClassFinder {
  T find<T>(String classPointer) {
    return findIterable(classPointer.split('.'));
  }

  T findIterable<T>(Iterable<String> classPointer);

  dynamic absoluteFind(dynamic map, String className,[ int index = 0]) {
    if(map is Map<String, dynamic>) {
      return map[className];
    }else{
      throw NotStyleClassException(className);
    }
  }
}
