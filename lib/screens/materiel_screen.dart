import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/produit.dart';
import '../reusable_widgets/product.dart';

class MyMateriel extends StatefulWidget {
  const MyMateriel({Key? key}) : super(key: key);

  @override
  State<MyMateriel> createState() => _MyMaterielState();
}

class _MyMaterielState extends State<MyMateriel> {

  void addProductToCart(Produit produit){
    Provider.of<Cart>(context, listen: false).addItemToCarte(produit);

    showDialog(
        context: context,
        builder: (context)=>const AlertDialog(
          title: Text("Seccussfully added (^_^)"),
          content: Text("Check your cart"),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context,value,child) =>  Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 15,
        ),
        //message
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Cardio",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,

                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        //pics

        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context ,index){


                Produit produit = value.getProductList()[index];
                return Product(
                  produit: produit,
                  onTap: () => addProductToCart( produit),
                );
              }
          ),
        ),






      ],

    ),
    );
  }
}
