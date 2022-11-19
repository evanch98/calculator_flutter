import 'package:flutter/material.dart';

import '/constants.dart';
import 'components/button_row.dart';
import 'components/transparent_container.dart';
import 'logic/calculator_logic.dart';

/*
 * Defines the main UI of the application.
 */
class MainUi extends StatefulWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  State<MainUi> createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> {
  String display = ""; // The value will be displayed on the screen.

  // To set the number value of display.
  // This function will be utilized by buttons that manipulate the number value
  // of the display variable.
  void _setNum(String num) {
    CalculatorLogic.setNum(num);
    setState(() {
      display = CalculatorLogic.getString();
    });
  }

  // To set the operator value of display.
  // This function will be utilized by buttons that manipulate the operator
  // value of the display variable.
  void _setOperator(String op) {
    CalculatorLogic.setOperator(op);
    setState(() {
      display = CalculatorLogic.getString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // Background image
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kNetworkImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              // Contains two widgets.
              // 1. TransparentContainer to display the entered values.
              // 2. TransparentContainer to hold Column widget.
              children: <Widget>[
                Expanded(
                  child: TransparentContainer(
                    size: double.infinity,
                    radiusSize: 20.0,
                    topBorder: true,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          // show the display's value on the screen
                          display,
                          style: kScreenTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2, // to get more spaces
                  child: TransparentContainer(
                    size: double.infinity,
                    radiusSize: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TransparentContainer(
                        size: double.infinity,
                        radiusSize: 0.0,
                        child: Column(
                          // Contains five ButtonRow widgets.
                          children: <Widget>[
                            Expanded(
                              child: ButtonRow(
                                firstBtnSymbol: "AC",
                                firstBtnFunction: () {
                                  CalculatorLogic.allClear();
                                  setState(() {
                                    display = CalculatorLogic.getString();
                                  });
                                },
                                secondBtnSymbol: "x²",
                                secondBtnFunction: () {
                                  CalculatorLogic.square();
                                  setState(() {
                                    display = CalculatorLogic.getResult();
                                  });
                                },
                                thirdBtnSymbol: "=",
                                thirdBtnFunction: () {
                                  CalculatorLogic.equalOperator();
                                  setState(() {
                                    display = CalculatorLogic.getResult();
                                  });
                                },
                                fourthBtnSymbol: "←",
                                fourthBtnFunction: () {
                                  _setNum("c");
                                },
                              ),
                            ),
                            const SizedBox(
                              height: kGutterSize,
                            ),
                            Expanded(
                              child: ButtonRow(
                                firstBtnSymbol: "7",
                                firstBtnFunction: () {
                                  _setNum("7");
                                },
                                secondBtnSymbol: "8",
                                secondBtnFunction: () {
                                  _setNum("8");
                                },
                                thirdBtnSymbol: "9",
                                thirdBtnFunction: () {
                                  _setNum("9");
                                },
                                fourthBtnSymbol: "+",
                                fourthBtnFunction: () {
                                  _setOperator("+");
                                },
                              ),
                            ),
                            const SizedBox(
                              height: kGutterSize,
                            ),
                            Expanded(
                              child: ButtonRow(
                                firstBtnSymbol: "4",
                                firstBtnFunction: () {
                                  _setNum("4");
                                },
                                secondBtnSymbol: "5",
                                secondBtnFunction: () {
                                  _setNum("5");
                                },
                                thirdBtnSymbol: "6",
                                thirdBtnFunction: () {
                                  _setNum("6");
                                },
                                fourthBtnSymbol: "–",
                                fourthBtnFunction: () {
                                  _setOperator("–");
                                },
                              ),
                            ),
                            const SizedBox(
                              height: kGutterSize,
                            ),
                            Expanded(
                              child: ButtonRow(
                                firstBtnSymbol: "1",
                                firstBtnFunction: () {
                                  _setNum("1");
                                },
                                secondBtnSymbol: "2",
                                secondBtnFunction: () {
                                  _setNum("2");
                                },
                                thirdBtnSymbol: "3",
                                thirdBtnFunction: () {
                                  _setNum("3");
                                },
                                fourthBtnSymbol: "×",
                                fourthBtnFunction: () {
                                  _setOperator("×");
                                },
                              ),
                            ),
                            const SizedBox(
                              height: kGutterSize,
                            ),
                            Expanded(
                              child: ButtonRow(
                                firstBtnSymbol: "±",
                                firstBtnFunction: () {
                                  _setNum("-");
                                },
                                secondBtnSymbol: "0",
                                secondBtnFunction: () {
                                  _setNum("0");
                                },
                                thirdBtnSymbol: ".",
                                thirdBtnFunction: () {
                                  _setNum(".");
                                },
                                fourthBtnSymbol: "÷",
                                fourthBtnFunction: () {
                                  _setOperator("÷");
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
