import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  final Widget child;

  final FocusNode focusNode;
  final Color? backgroundColor;
  final double? elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final ShapeBorder? shape;
  final double? width;
  final String? semanticLabel;

  const DrawerView({
    super.key,
    required this.focusNode,
    required this.child,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.width,
    this.semanticLabel,
  });

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  late FocusNode focusNode = widget.focusNode;
  @override
  void initState() {
    super.initState();
    focusNode.unfocus();
  }

  @override
  void dispose() {
    focusNode.requestFocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final width = mediaQueryData.size.width * 2 / 3;
    return Drawer(
      backgroundColor: widget.backgroundColor,
      elevation: widget.elevation ?? 1,
      shadowColor: widget.shadowColor,
      surfaceTintColor: widget.surfaceTintColor,
      shape: widget.shape,
      width: width,
      semanticLabel: widget.semanticLabel,
      child: widget.child,
    );
  }
}
