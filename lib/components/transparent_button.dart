import 'package:calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

import 'transparent_container.dart';

/*
 * The transparent button is simply the TransparentContainer() inside the
 * InkWell() widget to detect gestures and get splash effect.
 * There two required parameters to use this widget.
 * Parameters:
 *  symbol accepts String values that will display on the button.
 *  onTap accepts Functions that will be callback.
 */
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
    return Material(
      // Wrapped inside the Material widget to get a splash effect.
      child: InkWell(
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
      ),
    );
  }
}
