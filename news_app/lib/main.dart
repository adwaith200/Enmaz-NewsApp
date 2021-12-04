import 'package:flutter/material.dart';
import './views/home.dart';
import './views/landing.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //   initialRoute: '/',
    // routes:{
    //   '/':(context)=>Landing(),
    //   '/home':(context)=>Home()
    // },
      title: "News App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home:Home()
      
    );
  }
}

