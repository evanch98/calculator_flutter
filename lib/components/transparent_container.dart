import 'dart:ui';

import 'package:flutter/material.dart';

class TransparentContainer extends StatelessWidget {
  const TransparentContainer({
    Key? key,
    required this.child,
    required this.size,
    this.topBorder = false,
    required this.radiusSize,
  }) : super(key: key);

  final Widget child;
  final double size;
  final double radiusSize;
  final bool topBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: Colors.white54.withOpacity(0.2),
              borderRadius: topBorder
                  ? BorderRadius.vertical(
                      top: Radius.circular(radiusSize),
                    )
                  : BorderRadius.vertical(
                      bottom: Radius.circular(radiusSize),
                    ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
