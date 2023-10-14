import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/models/cart.dart';

import '../models/produit.dart';
import '../reusable_widgets/cart_item.dart';

class MyFavorites extends StatelessWidget {
  const MyFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: value.getusertcarte().length,
                itemBuilder: (context, index) {
                  Produit individualProduct = value.getusertcarte()[index];
                  return CartItem(produit: individualProduct);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
