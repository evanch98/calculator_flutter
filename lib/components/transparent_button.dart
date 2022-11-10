import 'package:calculator_flutter/components/transparent_container.dart';
import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const TransparentContainer(
        child: Text("1"),
      ),
      onTap: () {},
    );
  }
}
