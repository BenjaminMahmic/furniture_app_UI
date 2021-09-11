import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdDetBottom extends StatelessWidget {
  final double price;

  const ProdDetBottom({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  content: const Text('Product added to Cart'),
                  actions: [
                    TextButton(
                      child: const Text(
                        'UNDO',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                    ),
                    TextButton(
                      child: const Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                    ),
                  ],
                ),
              );
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyan[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Buy  \$${price.toString()}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
