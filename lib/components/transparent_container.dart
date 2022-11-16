import 'dart:ui';

import 'package:flutter/material.dart';

class TransparentContainer extends StatelessWidget {
  const TransparentContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white54.withOpacity(0.2),
              border: Border.all(width: 1, color: Colors.white30),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
