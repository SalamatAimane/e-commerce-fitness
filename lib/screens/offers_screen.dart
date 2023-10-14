import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOffers extends StatefulWidget {
  const MyOffers({Key? key}) : super(key: key);

  @override
  State<MyOffers> createState() => _MyOffersState();
}

class _MyOffersState extends State<MyOffers> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Text(
          "Offers",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 24,
        ),
      ),
    );
  }
}
