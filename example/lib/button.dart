/*
 Created by Thanh Son on 4/18/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:example/stylesheet/theme.stylesheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stylesheet/flutter_stylesheet.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) => StyleSheetConsumer<DefaultStyle>(
        builder: (context, sheet, child) => ElevatedButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: sheet.findIterable(['home', 'button', 'text']),
            ),
            style: sheet.findIterable(['home', 'button', 'style'])),
      );
}
