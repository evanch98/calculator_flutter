import 'package:calculator_flutter/components/transparent_container.dart';
import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({
    Key? key,
    required this.symbol,
    required this.onTap,
  }) : super(key: key);

  final String symbol;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: TransparentContainer(
        child: Text(symbol),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
