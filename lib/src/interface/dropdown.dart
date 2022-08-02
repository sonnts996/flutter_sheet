/*
 Created by Thanh Son on 02/08/2022.
 Copyright (c) 2022 . All rights reserved.
*/

part of 'style.dart';

@CopyWith()
class DropdownXStyle {
  const DropdownXStyle({
    this.hint,
    this.disabledHint,
    this.elevation = 8,
    this.style,
    this.underline,
    this.icon,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.iconSize = 24.0,
    this.isDense = false,
    this.isExpanded = false,
    this.itemHeight = kMinInteractiveDimension,
    this.focusColor,
    this.autofocus = false,
    this.dropdownColor,
    this.menuMaxHeight,
    this.enableFeedback,
    this.alignment = AlignmentDirectional.centerStart,
    this.borderRadius,
  });

  final Widget? hint;
  final Widget? disabledHint;
  final int elevation;
  final TextStyle? style;
  final Widget? underline;
  final Widget? icon;
  final Color? iconDisabledColor;
  final Color? iconEnabledColor;
  final double iconSize;
  final bool isDense;
  final bool isExpanded;
  final double? itemHeight;
  final Color? focusColor;
  final bool autofocus;
  final Color? dropdownColor;
  final double? menuMaxHeight;
  final bool? enableFeedback;
  final AlignmentGeometry alignment;
  final BorderRadius? borderRadius;

  DropdownButton<T> dropdownButton<T>({
    Key? key,
    required List<DropdownMenuItem<T>>? items,
    DropdownButtonBuilder? selectedItemBuilder,
    T? value,
    Widget? hint,
    Widget? disabledHint,
    required ValueChanged<T?>? onChanged,
    VoidCallback? onTap,
    int? elevation,
    TextStyle? style,
    Widget? underline,
    Widget? icon,
    Color? iconDisabledColor,
    Color? iconEnabledColor,
    double? iconSize,
    bool? isDense,
    bool? isExpanded,
    double? itemHeight,
    Color? focusColor,
    FocusNode? focusNode,
    bool? autofocus,
    Color? dropdownColor,
    double? menuMaxHeight,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    BorderRadius? borderRadius,
  }) {
    return DropdownButton(
      key: key,
      items: items,
      selectedItemBuilder: selectedItemBuilder,
      value: value,
      hint: hint ?? this.hint,
      disabledHint: disabledHint ?? this.disabledHint,
      onChanged: onChanged,
      onTap: onTap,
      elevation: elevation ?? this.elevation,
      style: style ?? this.style,
      underline: underline ?? this.underline,
      icon: icon ?? this.icon,
      iconDisabledColor: iconDisabledColor ?? this.iconDisabledColor,
      iconEnabledColor: iconEnabledColor ?? this.iconEnabledColor,
      iconSize: iconSize ?? this.iconSize,
      isDense: isDense ?? this.isDense,
      isExpanded: isExpanded ?? this.isExpanded,
      itemHeight: itemHeight ?? this.itemHeight,
      focusColor: focusColor ?? this.focusColor,
      focusNode: focusNode,
      autofocus: autofocus ?? this.autofocus,
      dropdownColor: dropdownColor ?? this.dropdownColor,
      menuMaxHeight: menuMaxHeight ?? this.menuMaxHeight,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      alignment: alignment ?? this.alignment,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
