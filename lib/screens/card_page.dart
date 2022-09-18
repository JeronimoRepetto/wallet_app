import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import '../models/credit_card_model.dart';
import '../widget/total_pay_button.dart';

class CardPage extends StatelessWidget {
  final card = CreditCardModel(
      cardNumberHidden: '4242',
      cardNumber: '4242424242424242',
      brand: 'visa',
      cvv: '213',
      expiracyDate: '01/25',
      cardHolderName: 'Jeronimo Repetto');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pay"),
      ),
      body: Stack(
        children: [
          Container(),
          Hero(
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
          const Positioned(
            bottom: 0,
            child: TotalPayButton(),
          )
        ],
      ),
    );
  }
}
