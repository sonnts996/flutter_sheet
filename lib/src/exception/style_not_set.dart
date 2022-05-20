/*
 Created by Thanh Son on 4/16/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class StyleNotSetException with Exception {
  const StyleNotSetException(this.message);

  final String message;

  @override
  String toString() => message;
}

class StyleEmptyException extends StyleNotSetException {
  StyleEmptyException() : super('Initial sheets can not empty!');
}
