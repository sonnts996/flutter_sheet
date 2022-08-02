/*
 Created by Thanh Son on 01/08/2022.
 Copyright (c) 2022 . All rights reserved.
*/

part of 'style.dart';

///
/// declare a Container Style for custom style
@CopyWith()
class ContainerXStyle {
  const ContainerXStyle({
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
  });

  final Alignment? alignment;
  final EdgeInsets? padding;
  final Color? color;
  final BoxDecoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsets? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;

  Container container({
    Key? key,
    Alignment? alignment,
    EdgeInsets? padding,
    Color? color,
    BoxDecoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsets? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child,
    Clip? clipBehavior = Clip.none,
  }) {
    return Container(
      key: key,
      alignment: alignment ?? this.alignment,
      padding: padding ?? this.padding,
      color: color ?? this.color,
      decoration: decoration ?? this.decoration,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      width: width ?? this.width,
      height: height ?? this.height,
      constraints: constraints ?? this.constraints,
      margin: margin ?? this.margin,
      transform: transform ?? this.transform,
      transformAlignment: transformAlignment ?? this.transformAlignment,
      child: child,
      clipBehavior: clipBehavior ?? this.clipBehavior,
    );
  }
}
