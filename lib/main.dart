import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:provider_food_delivery/providers/product_provider.dart';
import 'package:provider_food_delivery/screens/home_screen/homeScreen.dart';
import 'auth/sign_in.dart';
import 'config/color.dart';
import 'firebase_options.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp( 
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: scaffoldBackgroundColor,
        ),
        debugShowCheckedModeBanner: false,
        home: SignIn()
      ),
    );
  }
}
