import 'package:flutter/material.dart';
import 'package:healthhub/components/my_button.dart';
//import 'package:healthhub/main.dart';
import 'package:healthhub/models/food.dart';
import 'package:healthhub/models/restaurant.dart';
//import 'package:healthhub/pages/home_page.dart';
import 'package:provider/provider.dart';
// food details after clicking the foods pic
class FoodPage extends StatefulWidget {

final Food food;
final Map<Addon, bool>selectedAddons ={};
//final void Function()? onTap;


   FoodPage({
  super.key,
  required this.food,
  
  }){

   // initile the selected addons to false
for (Addon addon in food.availableAddons){
  selectedAddons[addon]=false;
}
   //

  }
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
void addToCart(Food food , Map<Addon,bool> selectedAddons){

  // يقفل الصفحة الحالية ويسوف  navigation لصفحة cart
  Navigator.pop(context);

  //format the selected addons
  List<Addon> currentlySelectedAddons = [];
  for (Addon addon in widget.food.availableAddons) {
    if (widget.selectedAddons[addon] == true) {
      currentlySelectedAddons.add(addon);
    }
  }
  //add to cart
  context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
}
  // method(addtocart)

  @override
  Widget build(BuildContext context) {
    return Stack(children: [

Scaffold(
      //appBar: AppBar(), --> nicer with stack
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //food image
          Image.asset(widget.food.imagePath),
        
          // food name
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.food.name, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
                  ),
                
                 // food price
                Text(
                  '\$'+widget.food.price.toString(),
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
        
                  const SizedBox(height: 10),
        
                // food description
                Text(
                  widget.food.description,
                  ),
        
                  const SizedBox(height: 10),
        
                  Divider(color: Theme.of(context).colorScheme.secondary),
                  
                  const SizedBox(height: 10),
        
                  Text("Add-ons",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
                  const SizedBox(height: 10),
                //addons
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.tertiary),
                      borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics:const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: widget.food.availableAddons.length,
                    itemBuilder: (context, index) {
                      // addons indiv
                      Addon addon = widget.food.availableAddons[index];               
                      // addons checkbox 
                     return CheckboxListTile(
                      title: Text(addon.name),
                      subtitle: Text('\$'+addon.price.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary),
                      ),
                      value: widget.selectedAddons[addon], // على حسب
                      onChanged:(bool? value) {
                        setState(() { // update the value
                          widget.selectedAddons[addon] = value!;
                        });
                      },
                      );
                  },
                  ),
                  
                ),
              ],
            ),
          ),

          // buttons --> add to cart
          MyButton(
            text: "Add to cart",
            onTap: () => addToCart(widget.food, widget.selectedAddons), 
            ),

                  const SizedBox(height: 25),

          ],
        ),
      ),
    ),

     //back button
    SafeArea(
      child: Opacity(
        opacity: 0.6,
        child: Container(
          margin: EdgeInsets.only(left:25),
          decoration:
           BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
             icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          ),
      ),
    ),
],);

   
  }
}