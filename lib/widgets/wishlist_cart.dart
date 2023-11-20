import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/providers/wishlist_provider.dart';
import 'package:shoes_app/theme.dart';

import '../model/product_model.dart';

class WishlistCart extends StatelessWidget {
  final ProductModel product;
  WishlistCart(this.product);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        right: 20,
        bottom: 14,
        left: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bg4Color,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              product.galleries![0].url!,
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name!,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/Love Icon White.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
