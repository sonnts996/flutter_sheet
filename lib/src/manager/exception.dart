/*
 Created by Thanh Son on 14/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
///
/// Exception use for Register Sheet
class SheetRegisterException with Exception {
  const SheetRegisterException(this.message);

  final String message;

  @override
  String toString() => message;
}

///
/// Exception when add a exists sheet name
class SheetExistsException extends SheetRegisterException {
  SheetExistsException(String name) : super('$name already exist in manager');
}

///
/// When you get a sheet type does not register yet.
class SheetNotRegisterException extends SheetRegisterException {
  const SheetNotRegisterException(String sheet)
      : super('$sheet was not exist in manager');
}

///
/// When you read a sheet name does not register yet
class SheetNotFoundException with Exception {
  const SheetNotFoundException(String sheet)
      : message = '$sheet: Sheet not found!';

  final String message;

  @override
  String toString() => message;
}
