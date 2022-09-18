

import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home.dart';
import 'package:wallet_app/screens/payment_success.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WalletApp",
      initialRoute: 'home',
      routes: {
        'home': (_) => HomePage(),
        'payment': (_) => PaymentSuccessPage()
      },
      theme: ThemeData.light().copyWith(
        primaryColor:const Color(0xff284879),
          appBarTheme: const AppBarTheme(color:Color(0xff284879)),
          scaffoldBackgroundColor:const Color(0xff21232a)
      ),
    );
  }

}