import 'package:flutter/material.dart';

import '/constants.dart';
import 'components/button_row.dart';
import 'components/transparent_container.dart';

class MainUi extends StatefulWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  State<MainUi> createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const Expanded(
                child: TransparentContainer(
                  size: double.infinity,
                  radiusSize: 20.0,
                  topBorder: true,
                  child: Center(
                    child: Text(
                      "12+5",
                      style: kScreenTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TransparentContainer(
                  size: double.infinity,
                  radiusSize: 20.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TransparentContainer(
                      size: double.infinity,
                      radiusSize: 0.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ButtonRow(
                              firstBtnSymbol: "AC",
                              firstBtnFunction: () {},
                              secondBtnSymbol: "x²",
                              secondBtnFunction: () {},
                              thirdBtnSymbol: "=",
                              thirdBtnFunction: () {},
                              fourthBtnSymbol: "←",
                              fourthBtnFunction: () {},
                            ),
                          ),
                          const SizedBox(
                            height: kGutterSize,
                          ),
                          Expanded(
                            child: ButtonRow(
                              firstBtnSymbol: "7",
                              firstBtnFunction: () {},
                              secondBtnSymbol: "8",
                              secondBtnFunction: () {},
                              thirdBtnSymbol: "9",
                              thirdBtnFunction: () {},
                              fourthBtnSymbol: "+",
                              fourthBtnFunction: () {},
                            ),
                          ),
                          const SizedBox(
                            height: kGutterSize,
                          ),
                          Expanded(
                            child: ButtonRow(
                              firstBtnSymbol: "4",
                              firstBtnFunction: () {},
                              secondBtnSymbol: "5",
                              secondBtnFunction: () {},
                              thirdBtnSymbol: "6",
                              thirdBtnFunction: () {},
                              fourthBtnSymbol: "–",
                              fourthBtnFunction: () {},
                            ),
                          ),
                          const SizedBox(
                            height: kGutterSize,
                          ),
                          Expanded(
                            child: ButtonRow(
                              firstBtnSymbol: "1",
                              firstBtnFunction: () {},
                              secondBtnSymbol: "2",
                              secondBtnFunction: () {},
                              thirdBtnSymbol: "3",
                              thirdBtnFunction: () {},
                              fourthBtnSymbol: "×",
                              fourthBtnFunction: () {},
                            ),
                          ),
                          const SizedBox(
                            height: kGutterSize,
                          ),
                          Expanded(
                            child: ButtonRow(
                              firstBtnSymbol: "±",
                              firstBtnFunction: () {},
                              secondBtnSymbol: "0",
                              secondBtnFunction: () {},
                              thirdBtnSymbol: ".",
                              thirdBtnFunction: () {},
                              fourthBtnSymbol: "÷",
                              fourthBtnFunction: () {},
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
    );
  }
}
