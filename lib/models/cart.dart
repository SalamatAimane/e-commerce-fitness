import 'package:fitness_app/models/produit.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  // list of materiel to sale

  List<Produit> produitShop = [
    Produit(
        name: "Machine a filer",
        price: "875",
        imagepath: "assets/images/cardio1.jpg",
        description: "Cool cardio materiel"),


    Produit(
        name: "Vélo assis DA6U Drax",
        price: "900",
        imagepath: "assets/images/cardio2.jpg",
        description: "Cool cardio materiel"),



    Produit(
        name: "Tapis de course",
        price: "850",
        imagepath: "assets/images/cardio3.jpg",
        description: "Cool cardio materiel"),


    Produit(
        name: "Power tower ",
        price: "950",
        imagepath: "assets/images/cardio4.jpg",
        description: "Cool cardio materiel"),

  ];


  //list of items in user cart

  List<Produit> userCart = [];


  //get list of materiel for sale

  List<Produit> getProductList() {
    return produitShop;
  }

  //get cart

  List<Produit> getusertcarte() {
    return userCart;
  }

  //add item to cart

  void addItemToCarte(Produit produit){
    userCart.add(produit);
    notifyListeners();
  }


  //remove item from cart

  void removeItemToCarte(Produit produit){
    userCart.remove(produit);
    notifyListeners();
  }
}