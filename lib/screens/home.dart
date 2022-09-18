import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:wallet_app/screens/card_page.dart';

import '../data/card_list.dart';
import '../helper/helper.dart';
import '../widget/total_pay_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pay"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () async{
                //showLoading(context);
                //await Future.delayed(const Duration(seconds: 1));
                //Navigator.pop(context);

                showAlert(context, "hola", "Hola Mundo");
              },
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              height: size.height,
              width: size.width,
              top: 100,
              child: PageView.builder(
                controller: PageController(
                  viewportFraction: 0.9,
                ),
                physics: const BouncingScrollPhysics(),
                itemCount: cards.length,
                itemBuilder: (_, i) {
                  final card = cards[i];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, NavegateFadeIn(context, CardPage()));
                    },
                    child: Hero(
                      tag: card.cardNumber,
                      child: CreditCardWidget(
                        cardNumber: card.cardNumberHidden,
                        expiryDate: card.expiracyDate,
                        cardHolderName: card.cardHolderName,
                        cvvCode: card.cvv,
                        showBackView: false,
                        onCreditCardWidgetChange: (card) {},
                      ),
                    ),
                  );
                },
              ),
            ),
            const Positioned(
              bottom: 0,
              child: TotalPayButton(),
            )
          ],
        ));
  }
}
