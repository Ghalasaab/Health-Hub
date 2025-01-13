import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {

// text style -->نفس constants 
var myPrimaryTextStyle =
    TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
 var mySecondryTextStyle =
    TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left:25,right: 25,bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delivery fee or cost
          Column(
            children: [
              Text('\$0.99', style: myPrimaryTextStyle,),         //up
              Text('Delivery fee',style: mySecondryTextStyle,),   //up
            ],
          ),

          // delivery time
          Column(
            children: [
              Text('15-30 min', style: myPrimaryTextStyle,),
              Text('Delivery time',style: mySecondryTextStyle,),
            ],
          ),
        ],
      ),
    );
  }
}