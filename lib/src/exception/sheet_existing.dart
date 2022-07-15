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

class SheetExistingException extends SheetRegisterException {
  SheetExistingException(String name) : super('$name already exist in manager');
}

class SheetNotRegisterException extends SheetRegisterException {
  const SheetNotRegisterException(String sheet)
      : super('$sheet was not exist in manager');
}
