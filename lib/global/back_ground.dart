import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key,required this.child}) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.lightBlueAccent.shade200,
            Colors.purpleAccent.shade200,
          ],
        ),
      ),
      child: Center(child: child),
    );
  }
}
