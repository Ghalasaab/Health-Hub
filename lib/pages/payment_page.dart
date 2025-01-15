import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:healthhub/components/my_button.dart';
import 'package:healthhub/pages/delivery_progress_page.dart';
class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>{

GlobalKey<FormState> formKey = GlobalKey<FormState>(); //

  String cardNumber ='';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // want to pay
  void userTappedPay(){
    if (formKey.currentState!.validate()) {
      // show dialog if its valid -->
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Confirm payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number:  + $cardNumber"),
                Text("Expiry Date:  + $expiryDate"),
                Text("Card Holder Name:  + $cardHolderName"),
                Text("CVV:  + $cardNumber"),
              ],
            ),
          ),
          actions: [
            //cancel
            TextButton(
              onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
             ),

            //yes
            TextButton(
              onPressed: () {
              Navigator.pop(context);
               Navigator.push(
                context,MaterialPageRoute(
                  builder: (context) => DeliveryProgressPage(),
                  ),
                  );
              },
              child: Text("Yes"),
             ),
          ],
        ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Checkout"),
      ),
      body: Column(
        children: [
          // users cards --> credit card --> credit card widget
          CreditCardWidget( // special import
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0){},
            ),

            // form
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange:  (data){
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName =data.cardHolderName;
                  cvvCode=data.cvvCode;
                });
              },
              formKey: formKey,
              ),
            Spacer(),

            MyButton(
              text: "Pay now",
              onTap: userTappedPay,
              ),
              const SizedBox(height: 25,),
        ],
      ),
    );
  }
}