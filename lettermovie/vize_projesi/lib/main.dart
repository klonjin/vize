import 'package:flutter/material.dart';
import 'package:vize_projesi/screens/login.dart';
import 'package:vize_projesi/screens/menu.dart';
import 'package:vize_projesi/screens/register.dart';
import 'package:vize_projesi/screens/welcome.dart';
import 'package:vize_projesi/screens/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes:{
        '/home':(context) => login(),
        '/register':(context) => Register(),
        '/welcome':(context) => Welcome(),
        '/homepage':(context) => Menu(),
        '/profil':(context) => ProfilPage()

        
        
      }, 
      initialRoute:'/welcome',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     
    );
  }
}

