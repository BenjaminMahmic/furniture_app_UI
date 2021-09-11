import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:furniture_app/models/item.dart';
import 'package:furniture_app/screens/product_detail/components/avaliable_colors.dart';
import 'package:furniture_app/screens/product_detail/components/bottom.dart';
import 'package:furniture_app/screens/product_detail/components/prod_title_price_stars.dart';

class AboutProduct extends StatelessWidget {
  final Model product;

  const AboutProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          ProdTitleStars(
            title: product.name,
            rate: product.rate,
          ),
          const SizedBox(height: 10),
          ProdAvaliableColors(colors: product.avaliableColors),
          const SizedBox(height: 10),
          Text(
            product.description,
            style: const TextStyle(color: Colors.grey),
          ),
          const Spacer(),
          ProdDetBottom(price: product.price),
        ],
      ),
    );
  }
}
