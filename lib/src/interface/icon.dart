/*
 Created by Thanh Son on 02/08/2022.
 Copyright (c) 2022 . All rights reserved.
*/

part of 'style.dart';

@CopyWith()
class IconXStyle {
  const IconXStyle({
    this.icon,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
  });

  final IconData? icon;
  final double? size;
  final Color? color;
  final String? semanticLabel;
  final TextDirection? textDirection;

  Icon iconWidget({
    Key? key,
    IconData? icon,
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) {
    return Icon(
      icon ?? this.icon,
      key: key,
      textDirection: textDirection ?? textDirection,
      color: color ?? this.color,
      size: size ?? this.size,
      semanticLabel: semanticLabel ?? this.semanticLabel,
    );
  }
}
