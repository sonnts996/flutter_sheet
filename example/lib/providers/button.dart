/*
 Created by Thanh Son on 4/18/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'package:flutter/material.dart';
import 'package:flutter_sheet/flutter_sheet.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) => SheetConsumer(
        builder: (context, sheet, child) => ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
          ),
        ),
      );
}
