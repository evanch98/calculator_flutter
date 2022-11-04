import 'dart:ui';

import 'package:flutter/material.dart';

class TransparentContainer extends StatelessWidget {
  const TransparentContainer(
      {Key? key, required this.text, required this.opacity})
      : super(key: key);

  final String text;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white54.withOpacity(opacity),
              border: Border.all(width: 1, color: Colors.white30),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 80,
                  color: Colors.white54,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
