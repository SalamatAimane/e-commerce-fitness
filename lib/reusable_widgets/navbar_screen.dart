import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class  NavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  NavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: GNav(
            backgroundColor: Colors.grey.shade200,
            color: Colors.grey[400],
            activeColor: Colors.grey.shade700,
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade400,
            gap: 8,
            padding: const EdgeInsets.all(16),
            onTabChange: (value) => onTabChange!(value),


            tabs: const [

              GButton(
                icon: Icons.fitness_center,
                text: 'Materiels',
              ),


              GButton(
                icon: Icons.shopping_cart,
                text: 'Cart',
              ),



              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),

              GButton(
                icon: Icons.local_offer,
                text: 'Offers',
              ),

            ]),
      ),
    );
  }


}
