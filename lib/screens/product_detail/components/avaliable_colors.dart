import 'package:flutter/material.dart';

class ProdAvaliableColors extends StatelessWidget {
  final List<Color> colors;

  const ProdAvaliableColors({
    Key? key,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((e) {
        return Container(
          margin: const EdgeInsets.only(right: 10),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: e,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }).toList(),
    );
  }
}
