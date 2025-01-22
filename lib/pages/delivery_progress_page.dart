import 'package:flutter/material.dart';
import 'package:healthhub/components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in progress.."),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  // cus bottom nav bar - mes+call
  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          ),
        ),
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Container(
              // driver
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(width: 10,),

                // driver details
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ghala saab Aljaloud" ,
                     style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    ),
                    Text("Driver" ,
                     style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    ),
                    ),
                  ],
                 ),


                      Spacer(),

                // button
                //calling
                Row(
                  children: [
                    Container( // message
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.message),
                  color:Theme.of(context).colorScheme.primary,
                  ),
                ),

                SizedBox(width: 10,),

                Container(// call
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.call),
                  color: Colors.green,
                  ),
                ),
                  ],
                )
          ],
          ),
    );
  }
}