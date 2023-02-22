import 'dart:ui' as ui show TextHeightBehavior;
import 'package:flutter/material.dart';
import 'package:flutter_project/core/ui/src/ui_manager/ui_manager.dart';

class TextView extends StatelessWidget {
  const TextView(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textHeightBehavior,
    this.selectionColor,
  });
  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? overflow;
  final int? maxLines;
  final String? semanticsLabel;
  final ui.TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(color: context.appTheme.textPrimary).merge(style),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}
