import 'package:flutter/material.dart';
import 'package:healthhub/components/my_button.dart';
import 'package:healthhub/components/my_cart_tile.dart';
//import 'package:healthhub/models/cart_item.dart';
import 'package:healthhub/models/restaurant.dart';
import 'package:healthhub/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child){
      //cart
      final userCart = restaurant.cart;

      // sc
      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear
            IconButton(
              onPressed: (){
                showDialog(
                  context: context,
                   builder: (context) => AlertDialog(
                    title: Text("Are you sure you want to clear the cart ? "),
                    actions: [
                      //cancel
                      TextButton(onPressed: () => Navigator.pop(context),
                       child: Text("cancel"),),
                      //yes
                      TextButton(onPressed: (){ 
                        Navigator.pop(context);
                        restaurant.clearCart();
                      }, child: Text("yes"),),
                    ],
                   ),
                   );
              },
              icon: Icon(Icons.delete),
              ),
          ],
          ),
          body: Column(
            children: [
              // list cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                     ? Expanded(child: Center(child: Text("cart is empty.."),
                     ),
                     )
                     : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index){
                
                          // items
                          final cartItem =userCart[index];
                          // cart tile UI
                          return MyCartTile(cartItem: cartItem);
                        },
                        ),
                        ),
                  ],
                  ),
              ),
                // pay
                MyButton(
                  text: "Go to checkout",
                 onTap: () => Navigator.push(
                  context,MaterialPageRoute(
                    builder: (context) => PaymentPage(),
                    ),
                    ),
                 ),

                 const SizedBox(height: 10,),
            ],
          ),
      );
    },);
  }
}