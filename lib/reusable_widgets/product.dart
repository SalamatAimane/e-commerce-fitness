import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/produit.dart';

class Product extends StatelessWidget {
  Produit produit;
  void Function()? onTap;
  Product({super.key,required this.produit,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //product image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(produit.imagepath),

          ),

          //description
          Text(
            produit.description,
            style: TextStyle(color: Colors.grey[600]),
          ),

          //price+details

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(produit.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),

                    Text(produit.price + " Dhs")
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add_shopping_cart_rounded,
                      color: Colors.white,
                    ),

                  ),
                ),
              ],
            ),
          ),





          //add to favoris
        ],
      ),
    );
  }
}
