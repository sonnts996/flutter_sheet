/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class SheetNotFoundException with Exception {
  const SheetNotFoundException(String sheet)
      : message = '$sheet: Sheet not found!';

  final String message;

  @override
  String toString() => message;
}
