import 'package:calculator_flutter/components/transparent_button.dart';
import 'package:calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

/*
 * The ButtonRow class consists of four buttons.
 * This widget is specifically designed for this project; therefore, it will not
 * be useful for other projects. In addition, the structure of this class is not
 * extensible.
 * There are eight parameters.
 *  Symbols accept String values.
 *  Functions accept function.
 */
class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key? key,
    required this.firstBtnSymbol,
    required this.secondBtnSymbol,
    required this.thirdBtnSymbol,
    required this.fourthBtnSymbol,
    required this.firstBtnFunction,
    required this.secondBtnFunction,
    required this.thirdBtnFunction,
    required this.fourthBtnFunction,
  }) : super(key: key);

  final String firstBtnSymbol; // the symbol for the first button
  final String secondBtnSymbol; // the symbol for the second button
  final String thirdBtnSymbol; // the symbol for the third button
  final String fourthBtnSymbol; // the symbol for the fourth button

  final Function? firstBtnFunction; // onTap function for the first button
  final Function? secondBtnFunction; // onTap function for the second button
  final Function? thirdBtnFunction; // onTap function for the third button
  final Function? fourthBtnFunction; // onTap function for the fourth button

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // First button - start
        Expanded(
          child: TransparentButton(
            symbol: firstBtnSymbol,
            onTap: firstBtnFunction,
          ),
        ),
        // First button - end
        const SizedBox(
          width: kGutterSize,
        ),
        // Second button - start
        Expanded(
          child: TransparentButton(
            symbol: secondBtnSymbol,
            onTap: secondBtnFunction,
          ),
        ),
        // Second button - end
        const SizedBox(
          width: kGutterSize,
        ),
        // third button - start
        Expanded(
          child: TransparentButton(
            symbol: thirdBtnSymbol,
            onTap: thirdBtnFunction,
          ),
        ),
        // third button - end
        const SizedBox(
          width: kGutterSize,
        ),
        // Fourth button - start
        Expanded(
          child: TransparentButton(
            symbol: fourthBtnSymbol,
            onTap: fourthBtnFunction,
          ),
        ),
        // Fourth button - end
      ],
    );
  }
}
