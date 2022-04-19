/*
 Created by Thanh Son on 4/19/2022.
 Copyright (c) 2022 . All rights reserved.
*/
class NotStyleClassException implements Exception{
  const NotStyleClassException(String className): message = 'Class $className is not a style class!';
  final String message;

  @override
  String toString() => message;
}