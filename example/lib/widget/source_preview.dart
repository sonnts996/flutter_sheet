/*
 Created by Thanh Son on 16/07/2022.
 Copyright (c) 2022 . All rights reserved.
*/
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class SourcePreview extends StatelessWidget {
  const SourcePreview({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) => FutureBuilder<String?>(
      future: loadData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.data != null) {
          return Markdown(data: """
          ```dart
          ${snapshot.data}
          ```
          """);
        } else {
          return const Text('Error while load data');
        }
      });

  Future<String?> loadData() {
    final File file = File(path);
    return file.readAsString();
  }
}
