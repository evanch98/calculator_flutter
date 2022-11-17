import 'package:calculator_flutter/components/transparent_button.dart';
import 'package:calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

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

  final String firstBtnSymbol;
  final String secondBtnSymbol;
  final String thirdBtnSymbol;
  final String fourthBtnSymbol;

  final Function? firstBtnFunction;
  final Function? secondBtnFunction;
  final Function? thirdBtnFunction;
  final Function? fourthBtnFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TransparentButton(
            symbol: firstBtnSymbol,
            onTap: firstBtnFunction,
          ),
        ),
        const SizedBox(
          width: kGutterSize,
        ),
        Expanded(
          child: TransparentButton(
            symbol: secondBtnSymbol,
            onTap: secondBtnFunction,
          ),
        ),
        const SizedBox(
          width: kGutterSize,
        ),
        Expanded(
          child: TransparentButton(
            symbol: thirdBtnSymbol,
            onTap: thirdBtnFunction,
          ),
        ),
        const SizedBox(
          width: kGutterSize,
        ),
        Expanded(
          child: TransparentButton(
            symbol: fourthBtnSymbol,
            onTap: fourthBtnFunction,
          ),
        ),
      ],
    );
  }
}
