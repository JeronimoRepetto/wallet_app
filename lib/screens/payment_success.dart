import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Success!")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.star,color: Colors.yellow[200],size: 100,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text("Payment was successful",style: TextStyle(color: Colors.white,fontSize: 22),),
            )
          ],
        )
      ),
    );
  }
}
