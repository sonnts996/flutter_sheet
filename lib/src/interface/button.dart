/*
 Created by Thanh Son on 02/08/2022.
 Copyright (c) 2022 . All rights reserved.
*/

part of 'style.dart';

@CopyWith()
class ButtonXStyle {
  const ButtonXStyle({
    this.style,
    this.clipBehavior = Clip.none,
    this.autofocus = false,
    this.icon,
  });

  final Clip clipBehavior;
  final bool autofocus;
  final ButtonStyle? style;
  final IconXStyle? icon;

  ElevatedButton elevatedButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    required Widget? child,
  }) {
    return ElevatedButton(
      key: key,
      onPressed: onLongPress,
      onFocusChange: onFocusChange,
      onHover: onHover,
      child: child,
      focusNode: focusNode,
      style: style ?? style,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      onLongPress: onLongPress,
    );
  }

  ElevatedButton elevatedButtonIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    required Widget icon,
    required Widget label,
  }) {
    return ElevatedButton.icon(
      key: key,
      onPressed: onLongPress,
      onFocusChange: onFocusChange,
      onHover: onHover,
      icon: icon,
      focusNode: focusNode,
      style: style ?? style,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      onLongPress: onLongPress,
      label: label,
    );
  }

  OutlinedButton outlinedButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    required Widget child,
  }) {
    return OutlinedButton(
      key: key,
      onPressed: onLongPress,
      onFocusChange: onFocusChange,
      onHover: onHover,
      child: child,
      focusNode: focusNode,
      style: style ?? style,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      onLongPress: onLongPress,
    );
  }

  OutlinedButton outlinedButtonIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    required Widget icon,
    required Widget label,
  }) {
    return OutlinedButton.icon(
      key: key,
      onPressed: onLongPress,
      icon: icon,
      focusNode: focusNode,
      style: style ?? style,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      onLongPress: onLongPress,
      label: label,
    );
  }

  TextButton textButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    required Widget child,
  }) {
    return TextButton(
      key: key,
      onPressed: onLongPress,
      onFocusChange: onFocusChange,
      onHover: onHover,
      child: child,
      focusNode: focusNode,
      style: style ?? style,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      onLongPress: onLongPress,
    );
  }

  TextButton textButtonIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    required Widget icon,
    required Widget label,
  }) {
    return TextButton.icon(
      key: key,
      onPressed: onLongPress,
      onFocusChange: onFocusChange,
      onHover: onHover,
      icon: icon,
      focusNode: focusNode,
      style: style ?? style,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      onLongPress: onLongPress,
      label: label,
    );
  }
}

class IconButtonXStyle {
  IconButtonXStyle({
    this.iconSize,
    this.visualDensity,
    this.padding = const EdgeInsets.all(8.0),
    this.alignment = Alignment.center,
    this.splashRadius,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.mouseCursor,
    this.autofocus = false,
    this.tooltip,
    this.enableFeedback = true,
    this.constraints,
    this.icon,
  });

  final double? iconSize;
  final VisualDensity? visualDensity;
  final EdgeInsetsGeometry padding;
  final Alignment alignment;
  final double? splashRadius;
  final Color? color;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? disabledColor;
  final MouseCursor? mouseCursor;
  final bool autofocus;
  final String? tooltip;
  final bool enableFeedback;
  final BoxConstraints? constraints;
  final IconXStyle? icon;

  IconButton iconButton({
    Key? key,
    double? iconSize,
    VisualDensity? visualDensity,
    EdgeInsets? padding,
    Alignment? alignment,
    double? splashRadius,
    Color? color,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Color? disabledColor,
    required VoidCallback? onPressed,
    MouseCursor? mouseCursor,
    FocusNode? focusNode,
    bool? autofocus,
    String? tooltip,
    bool? enableFeedback,
    BoxConstraints? constraints,
    required Widget icon,
  }) {
    return IconButton(
      key: key,
      iconSize: iconSize ?? this.iconSize,
      visualDensity: visualDensity ?? this.visualDensity,
      padding: padding ?? this.padding,
      alignment: alignment ?? this.alignment,
      splashRadius: splashRadius ?? this.splashRadius,
      color: color ?? this.color,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      highlightColor: highlightColor ?? this.highlightColor,
      splashColor: splashColor ?? this.splashColor,
      disabledColor: disabledColor ?? this.disabledColor,
      onPressed: onPressed,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      focusNode: focusNode,
      autofocus: autofocus ?? this.autofocus,
      tooltip: tooltip ?? this.tooltip,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      constraints: constraints ?? this.constraints,
      icon: icon,
    );
  }
}
