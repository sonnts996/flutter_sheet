/*
 Created by Thanh Son on 4/8/2022.
 Copyright (c) 2022 . All rights reserved.
*/

import 'package:flutter/material.dart';
import 'package:flutter_stylesheet/flutter_stylesheet.dart';

Icon _defaultBackIcon(bool isDialog) => isDialog
    ? const Icon(
        Icons.close,
        color: Colors.black45,
      )
    : const Icon(
        Icons.home,
        color: Colors.white,
      );

class DefaultStyle extends FlutterStyleSheet {
  DefaultStyle(
      {this.primaryColor = Colors.indigo,
      this.titleStyle = const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      Icon Function(bool isDialog)? backIcon})
      : backIcon = backIcon ?? _defaultBackIcon;

  final MaterialColor primaryColor;
  final TextStyle titleStyle;
  Icon Function(bool isDialog) backIcon;

  @override
  // TODO: implement theme
  ThemeData get theme => ThemeData(
        primaryColor: primaryColor,
        primarySwatch: primaryColor,
      );

  @override
  // TODO: implement styles
  Map<String, dynamic> get styles => {
        'appbar': {
          'height': 32,
          'color': primaryColor,
          'titleStyle': titleStyle,
          'leading': backIcon,
        },
        'scaffold': {
          'background': Colors.white,
        },
        'home': {
          'alert': {
            'success': {
              'background': Colors.greenAccent,
              'icon': (c) => const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 24,
                  ),
              'style': const TextStyle(color: Colors.white),
            },
            'error': {
              'background': Colors.red.shade200,
              'icon': (c) => const Icon(
                    Icons.close,
                    color: Colors.redAccent,
                    size: 24,
                  ),
              'style': const TextStyle(color: Colors.red),
            }
          },
          'button': {
            'text': titleStyle,
            'style': ElevatedButton.styleFrom(
                primary: primaryColor,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))
          }
        }
      };
}
