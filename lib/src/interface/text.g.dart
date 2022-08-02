// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$XTitleCWProxy {
  XTitle content(String content);

  XTitle subTitle(String subTitle);

  XTitle title(String title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `XTitle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// XTitle(...).copyWith(id: 12, name: "My name")
  /// ````
  XTitle call({
    String? content,
    String? subTitle,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfXTitle.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfXTitle.copyWith.fieldName(...)`
class _$XTitleCWProxyImpl implements _$XTitleCWProxy {
  final XTitle _value;

  const _$XTitleCWProxyImpl(this._value);

  @override
  XTitle content(String content) => this(content: content);

  @override
  XTitle subTitle(String subTitle) => this(subTitle: subTitle);

  @override
  XTitle title(String title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `XTitle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// XTitle(...).copyWith(id: 12, name: "My name")
  /// ````
  XTitle call({
    Object? content = const $CopyWithPlaceholder(),
    Object? subTitle = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return XTitle(
      content: content == const $CopyWithPlaceholder() || content == null
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      subTitle: subTitle == const $CopyWithPlaceholder() || subTitle == null
          ? _value.subTitle
          // ignore: cast_nullable_to_non_nullable
          : subTitle as String,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
    );
  }
}

extension $XTitleCopyWith on XTitle {
  /// Returns a callable class that can be used as follows: `instanceOfXTitle.copyWith(...)` or like so:`instanceOfXTitle.copyWith.fieldName(...)`.
  _$XTitleCWProxy get copyWith => _$XTitleCWProxyImpl(this);
}

abstract class _$XDialogCWProxy {
  XDialog button1(String button1);

  XDialog button2(String button2);

  XDialog button3(String button3);

  XDialog message(String message);

  XDialog title(String title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `XDialog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// XDialog(...).copyWith(id: 12, name: "My name")
  /// ````
  XDialog call({
    String? button1,
    String? button2,
    String? button3,
    String? message,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfXDialog.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfXDialog.copyWith.fieldName(...)`
class _$XDialogCWProxyImpl implements _$XDialogCWProxy {
  final XDialog _value;

  const _$XDialogCWProxyImpl(this._value);

  @override
  XDialog button1(String button1) => this(button1: button1);

  @override
  XDialog button2(String button2) => this(button2: button2);

  @override
  XDialog button3(String button3) => this(button3: button3);

  @override
  XDialog message(String message) => this(message: message);

  @override
  XDialog title(String title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `XDialog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// XDialog(...).copyWith(id: 12, name: "My name")
  /// ````
  XDialog call({
    Object? button1 = const $CopyWithPlaceholder(),
    Object? button2 = const $CopyWithPlaceholder(),
    Object? button3 = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return XDialog(
      button1: button1 == const $CopyWithPlaceholder() || button1 == null
          ? _value.button1
          // ignore: cast_nullable_to_non_nullable
          : button1 as String,
      button2: button2 == const $CopyWithPlaceholder() || button2 == null
          ? _value.button2
          // ignore: cast_nullable_to_non_nullable
          : button2 as String,
      button3: button3 == const $CopyWithPlaceholder() || button3 == null
          ? _value.button3
          // ignore: cast_nullable_to_non_nullable
          : button3 as String,
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
    );
  }
}

extension $XDialogCopyWith on XDialog {
  /// Returns a callable class that can be used as follows: `instanceOfXDialog.copyWith(...)` or like so:`instanceOfXDialog.copyWith.fieldName(...)`.
  _$XDialogCWProxy get copyWith => _$XDialogCWProxyImpl(this);
}
