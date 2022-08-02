/*
 Created by Thanh Son on 01/08/2022.
 Copyright (c) 2022 . All rights reserved.
*/
part of 'style.dart';

@CopyWith()
class TextFieldXStyle {
  const TextFieldXStyle({
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection = true,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode,
    this.enableIMEPersonalizedLearning = true,
    this.containerDecoration,
    this.clipBehavior = Clip.hardEdge,
    this.dragStartBehavior = DragStartBehavior.start,
    this.mouseCursor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
  });

  final InputDecoration? decoration;

  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;

  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;

  final TextAlignVertical? textAlignVertical;
  final bool autofocus;

  final bool readOnly;

  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final String obscuringCharacter;

  final bool obscureText;

  final bool autocorrect;

  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;

  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;

  final int? minLines;
  final bool expands;

  final int? maxLength;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;

  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;

  final bool enableInteractiveSelection;

  final InputCounterWidgetBuilder? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autovalidateMode;
  final bool enableIMEPersonalizedLearning;

  final BoxDecoration? containerDecoration;

  final Clip clipBehavior;

  final DragStartBehavior dragStartBehavior;

  final MouseCursor? mouseCursor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;

  TextFormField textFormField({
    Key? key,
    TextEditingController? controller,
    String? initialValue,
    FocusNode? focusNode,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    bool? autofocus,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    @Deprecated(
      'Use maxLengthEnforcement parameter which provides more specific '
      'behavior related to the maxLength limit. '
      'This feature was deprecated after v1.25.0-5.0.pre.',
    )
        bool maxLengthEnforced = true,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection = true,
    TextSelectionControls? selectionControls,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
  }) {
    return TextFormField(
      key: key,
      controller: controller,
      initialValue: initialValue,
      focusNode: focusNode,
      decoration: decoration ?? this.decoration,
      keyboardType: keyboardType ?? this.keyboardType,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      textInputAction: textInputAction ?? this.textInputAction,
      style: style ?? this.style,
      strutStyle: strutStyle ?? this.strutStyle,
      textDirection: textDirection ?? this.textDirection,
      textAlign: textAlign ?? this.textAlign,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      autofocus: autofocus ?? this.autofocus,
      readOnly: readOnly ?? this.readOnly,
      toolbarOptions: toolbarOptions ?? this.toolbarOptions,
      showCursor: showCursor ?? this.showCursor,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      obscureText: obscureText ?? this.obscureText,
      autocorrect: autocorrect ?? this.autocorrect,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      maxLengthEnforced: maxLengthEnforced,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
      maxLines: maxLines ?? this.maxLines,
      minLines: minLines ?? this.minLines,
      expands: expands ?? this.expands,
      maxLength: maxLength ?? this.maxLength,
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      validator: validator ?? this.validator,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      enabled: enabled ?? this.enabled,
      cursorWidth: cursorWidth ?? this.cursorWidth,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      cursorRadius: cursorRadius ?? this.cursorRadius,
      cursorColor: cursorColor ?? this.cursorColor,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      enableInteractiveSelection:
          enableInteractiveSelection ?? this.enableInteractiveSelection,
      selectionControls: selectionControls,
      buildCounter: buildCounter ?? this.buildCounter,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      autofillHints: autofillHints ?? this.autofillHints,
      autovalidateMode: autovalidateMode ?? this.autovalidateMode,
      scrollController: scrollController,
      restorationId: restorationId,
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning ?? this.enableIMEPersonalizedLearning,
    );
  }

  TextField textField({
    Key? key,
    TextEditingController? controller,
    String? initialValue,
    FocusNode? focusNode,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    TextInputAction? textInputAction,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    bool? autofocus,
    bool? readOnly,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    @Deprecated(
      'Use maxLengthEnforcement parameter which provides more specific '
      'behavior related to the maxLength limit. '
      'This feature was deprecated after v1.25.0-5.0.pre.',
    )
        bool maxLengthEnforced = true,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    bool? enableInteractiveSelection = true,
    TextSelectionControls? selectionControls,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool? enableIMEPersonalizedLearning,
    Clip? clipBehavior,
    DragStartBehavior? dragStartBehavior,
    MouseCursor? mouseCursor,
    AppPrivateCommandCallback? onAppPrivateCommand,
    ValueChanged<String>? onSubmitted,
    ui.BoxHeightStyle? selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle? selectionWidthStyle = ui.BoxWidthStyle.tight,
  }) {
    return TextField(
      key: key,
      controller: controller,
      focusNode: focusNode,
      decoration: decoration ?? this.decoration,
      keyboardType: keyboardType ?? this.keyboardType,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      textInputAction: textInputAction ?? this.textInputAction,
      style: style ?? this.style,
      strutStyle: strutStyle ?? this.strutStyle,
      textDirection: textDirection ?? this.textDirection,
      textAlign: textAlign ?? this.textAlign,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      autofocus: autofocus ?? this.autofocus,
      readOnly: readOnly ?? this.readOnly,
      toolbarOptions: toolbarOptions ?? this.toolbarOptions,
      showCursor: showCursor ?? this.showCursor,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      obscureText: obscureText ?? this.obscureText,
      autocorrect: autocorrect ?? this.autocorrect,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      maxLengthEnforced: maxLengthEnforced,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
      maxLines: maxLines ?? this.maxLines,
      minLines: minLines ?? this.minLines,
      expands: expands ?? this.expands,
      maxLength: maxLength ?? this.maxLength,
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      enabled: enabled ?? this.enabled,
      cursorWidth: cursorWidth ?? this.cursorWidth,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      cursorRadius: cursorRadius ?? this.cursorRadius,
      cursorColor: cursorColor ?? this.cursorColor,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      enableInteractiveSelection:
          enableInteractiveSelection ?? this.enableInteractiveSelection,
      selectionControls: selectionControls,
      buildCounter: buildCounter ?? this.buildCounter,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      autofillHints: autofillHints ?? this.autofillHints,
      scrollController: scrollController,
      restorationId: restorationId,
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning ?? this.enableIMEPersonalizedLearning,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      onAppPrivateCommand: onAppPrivateCommand,
      onSubmitted: onSubmitted,
      selectionHeightStyle: selectionHeightStyle ?? this.selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle ?? this.selectionWidthStyle,
    );
  }
}
