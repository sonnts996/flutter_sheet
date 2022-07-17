/*
 Created by Thanh Son on 14/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class SheetRegisterException with Exception {
  const SheetRegisterException(this.message);

  final String message;

  @override
  String toString() => message;
}

class SheetExistsException extends SheetRegisterException {
  SheetExistsException(String name) : super('$name already exist in manager');
}

class SheetNotRegisterException extends SheetRegisterException {
  const SheetNotRegisterException(String sheet)
      : super('$sheet was not exist in manager');
}

class SheetNotFoundException with Exception {
  const SheetNotFoundException(String sheet)
      : message = '$sheet: Sheet not found!';

  final String message;

  @override
  String toString() => message;
}
