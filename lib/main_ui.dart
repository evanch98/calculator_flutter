import 'package:flutter/material.dart';

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
        backgroundColor: Colors.purpleAccent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: TransparentContainer(
                  child: Text(""),
                  size: double.infinity,
                ),
              ),
              Expanded(
                child: TransparentContainer(
                  child: Text(""),
                  size: double.infinity,
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
