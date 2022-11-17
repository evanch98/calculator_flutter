import 'package:calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

import 'transparent_container.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    Key? key,
    required this.symbol,
    required this.onTap,
  }) : super(key: key);

  final String symbol;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: TransparentContainer(
        size: double.infinity,
        radiusSize: 0.0,
        child: Center(
          child: Text(
            symbol,
            style: kButtonTextStyle,
          ),
        ),
      ),
      onTap: () {
        onTap!();
      },
    );
  }
}
