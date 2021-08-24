import 'package:flutter/material.dart';

class ShadowBox extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Widget child;

  const ShadowBox({
    required Key key,
    required this.width,
    required this.height,
    this.borderRadius = 5.0,
    required this.padding,
    required this.margin,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: Offset(0, 0),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
