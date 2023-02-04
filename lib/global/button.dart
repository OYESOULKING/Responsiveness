import 'package:flutter/material.dart';

import 'global.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.buttonWidth,
    this.child,
    this.onTap,
  }) : super(key: key);
  final Widget? child;
  final double? buttonWidth;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth ?? normalButtonWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(largeRadius),
            boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 3, spreadRadius: 1, offset: Offset(3, 2)), BoxShadow(color: Colors.white38, blurRadius: 2, offset: Offset(3, 2))]),
        child: Center(child: child),
      ),
    );
  }
}
