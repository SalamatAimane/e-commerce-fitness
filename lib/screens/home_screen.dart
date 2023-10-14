import 'package:fitness_app/reusable_widgets/navbar_screen.dart';
import 'package:fitness_app/screens/favorite_screen.dart';
import 'package:fitness_app/screens/profile_screen.dart';
import 'package:fitness_app/screens/materiel_screen.dart';
import 'package:flutter/material.dart';

import 'offers_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void  navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [

     const MyMateriel(),
     const MyFavorites(),
     const MyProfile(),
     const MyOffers(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: NavBar(
          onTabChange: (index) => navigateBottomBar(index)
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
          icon: const Padding(
            padding:  EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),

          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        )
      ),
      drawer:  Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "assets/images/gym-pic.png",
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),


                const Padding(
                  padding:  EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),







                const Padding(
                  padding:  EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Products",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),


                const Padding(
                  padding:  EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.subscriptions,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Subscriptions",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),



                const Padding(
                  padding:  EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),



              ],
            ),


            const Padding(
              padding:  EdgeInsets.only(left: 25.0,top: 280),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 25.0,bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Disconnect",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),


          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
