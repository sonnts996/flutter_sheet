/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class SheetNotSetException with Exception {
  const SheetNotSetException(this.message);

  final String message;

  @override
  String toString() => message;
}

class SheetEmptyException extends SheetNotSetException {
  SheetEmptyException() : super('Initial sheets can not empty!');
}
