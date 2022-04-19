/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class StyleNotFoundException with Exception {
  const StyleNotFoundException(String stylesheet)
      : message = '$stylesheet: Style not found!';

  final String message;

  @override
  String toString() => message;
}
