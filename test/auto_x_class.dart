/*
 Created by Thanh Son on 01/08/2022.
 Copyright (c) 2022 . All rights reserved.
*/

void main() {
  const text = """
        
    Key? key,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
  
      """;
  final list = listing(text);
  print(constructor('Constructor', list));
  print(fields(list));
  print(clone('Constructor', list));
}

List<String> listing(String data) {
  final list = data.split(',').map((e) => e.trim());
  return list.toList(growable: false);
}

String constructor(String name, List<String> list) {
  String params = '';
  for (var e in list) {
    if (e.startsWith('this.')) {
      params += '$e,\n';
    } else if (e.contains(' ')) {
      params += e.replaceRange(0, e.indexOf(' '), 'this.');
      params += ',\n';
    }
  }
  return "$name({$params})";
}

String fields(List<String> list) {
  String params = '';
  for (var e in list) {
    params += 'final ';
    if (e.startsWith('required ')) {
      e = e.replaceFirst('required ', '');
    }
    if (e.startsWith('this.')) {
      params += e.replaceFirst('this.', 'dynamic ');
      params += ';\n';
    } else if (e.contains('=')) {
      params += e.split('=')[0];
      params += ';\n';
    } else {
      params += '$e;\n';
    }
  }
  return params;
}

String clone(String name, List<String> list) {
  String params = '';
  for (var e in list) {
    var field = e;
    if (e.startsWith('required ')) {
      field = field.replaceFirst('required ', '');
    }
    if (e.startsWith('this.')) {
      field = field.replaceFirst('this.', '');
    }
    if (e.contains('=')) {
      field = field.split('=')[0];
    }

    if (e.contains(' ')) {
      field = field.replaceRange(0, e.indexOf(' '), '');
    }
    params += '$field:$field ?? this.$field,\n';
  }
  return '$name($params);';
}
