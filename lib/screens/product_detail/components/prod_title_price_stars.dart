import 'package:flutter/material.dart';

class ProdTitleStars extends StatelessWidget {
  final String title;

  final double rate;

  const ProdTitleStars({
    Key? key,
    required this.title,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                  size: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  rate.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Avaliable colors:',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
