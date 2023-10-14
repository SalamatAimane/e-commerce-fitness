import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/models/cart.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/screens/signin_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(
        apiKey: "AIzaSyD9mfcmdnpfqyy6kuKU_5MObvTHKT0zBwo",
        appId: "1:845595187354:web:2645979cccd6101459e723",
        messagingSenderId: "845595187354",
        projectId: "fitness-56130"));
  }

  else{
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
    );

  }
}