//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:healthhub/models/cart_item.dart';
import 'package:healthhub/models/food.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

/*بيكون فيه جمع للاكواد كلها وكل الفئات مع تفاصيلها
*/ 
class Restaurant extends ChangeNotifier {

// menu --> listed
final List<Food> _menu = [

// burgers
Food( //--> 1 item (cb)
  name: "cheeseburger",
  description: " A juicy beef slice with melted cheddar,lettuce , tomato and a hint of onion ",
  imagePath: "lib/imgs/burgers/cb.jpg",
  price: 23.0,
   category: FoodCategory.burgers,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "onion", price: 2.0,),
     Addon(name: "Avocado", price: 2.5,),
     ],
   ),

   Food( // (ab)
  name: "aloha burger",
  description: " A juicy beef slice with melted cheddar,lettuce , tomato and a hint of onion ",
  imagePath: "lib/imgs/burgers/ab.jpg",
  price: 23.0,
   category: FoodCategory.burgers,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "onion", price: 2.0,),
     Addon(name: "Avocado", price: 2.5,),
     ],
   ),

   Food( // (bbqb)
  name: "BBQ burger",
  description: " A juicy beef slice with melted cheddar,lettuce , tomato and a hint of onion ",
  imagePath: "lib/imgs/burgers/bbqb.jpg",
  price: 23.0,
   category: FoodCategory.burgers,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "onion", price: 2.0,),
     Addon(name: "Avocado", price: 2.5,),
     ],
   ),

   Food( // (vb)
  name: "vega burger",
  description: " A juicy falafel slice with melted cheddar,lettuce , tomato and a hint of onion ",
  imagePath: "lib/imgs/burgers/vb.jpg",
  price: 23.0,
   category: FoodCategory.burgers,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "onion", price: 2.0,),
     Addon(name: "Avocado", price: 2.5,),
     ],
   ),

   Food( // (bmbb)
  name: "bluemoon burger",
  description: " A juicy beef slice with melted cheddar,lettuce , tomato and a hint of onion ",
  imagePath: "lib/imgs/burgers/bmb.jpg",
  price: 23.0,
   category: FoodCategory.burgers,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "onion", price: 2.0,),
     Addon(name: "Avocado", price: 2.5,),
     ],
   ),
//salads --> same as up --> (total salads is 5)

Food( //(1)
  name: "ceaser salad",
  description: " A fresh salad ",
  imagePath: "lib/imgs/salads/cs.jpg",
  price: 25.0,
   category: FoodCategory.salads,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "extra sauce", price: 2.0,),
     ],
   ),

   Food( // (2)
  name: "greek salad",
  description: " A fresh salad ",
  imagePath: "lib/imgs/salads/gs.jpg",
  price: 25.0,
   category: FoodCategory.salads,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "extra sauce", price: 2.0,),
     ],
   ),

   Food( // (3)
  name: "asian saseme salad",
  description: " A fresh salad ",
  imagePath: "lib/imgs/salads/ss.jpg",
  price: 25.0,
   category: FoodCategory.salads,
   availableAddons:[
    Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "extra sauce", price: 2.0,),
     ],
   ),

   Food( // (4)
  name: "quinoa salad",
  description: "A fresh salad ",
  imagePath: "lib/imgs/salads/qs.jpg",
  price: 25.0,
   category: FoodCategory.salads,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "extra sauce", price: 2.0,),
     ],
   ),

   Food( // (5)
  name: "south west salad",
  description: "A fresh salad ",
  imagePath: "lib/imgs/salads/sss.jpg",
  price: 25.0,
   category: FoodCategory.salads,
   availableAddons:[
     Addon(name: "extra cheese", price: 5.0,),
     Addon(name: "extra sauce", price: 2.0,),
     ],
   ),

//sides
Food( // (1)
  name: "edmami",
  description: "steamed soybeans lightly salted ",
  imagePath: "lib/imgs/sides/ed.jpg",
  price: 15.0,
   category: FoodCategory.sides,
   availableAddons:[
     Addon(name: "extra salt", price: 1.0,),
     ],
   ),

   Food( // (2)
  name: "garlic bread",
  description: "toasted bread flavored with garlic and butter ",
  imagePath: "lib/imgs/sides/gb.jpg",
  price: 10.0,
   category: FoodCategory.sides,
   availableAddons:[
      Addon(name: "extra salt", price: 1.0,),
     ],
   ),

   Food( // (3)
  name: "loaded fries",
  description: "potato skins topped wit cheese, bacon and onion ",
  imagePath: "lib/imgs/sides/lf.jpg",
  price: 25.0,
   category: FoodCategory.sides,
   availableAddons:[
     Addon(name: "extra salt", price: 1.0,),
     ],
   ),

   Food( // (4)
  name: "onion rings",
  description: "crispy rings of onion ",
  imagePath: "lib/imgs/sides/or.jpg",
  price: 25.0,
   category: FoodCategory.sides,
   availableAddons:[
     Addon(name: "extra salt", price: 1.0,),
     ],
   ),

   Food( // (5)
  name: "sweet potato",
  description: "A delicious side ",
  imagePath: "lib/imgs/sides/sp.jpg",
  price: 25,
   category: FoodCategory.sides,
   availableAddons:[
     Addon(name: "extra salt", price: 1.0,),
     ],
   ),


//deserts
Food( // (1)
  name: "brownie",
  description: "chocolatey baked desert ",
  imagePath: "lib/imgs/deserts/br.jpg",
  price: 15.0,
   category: FoodCategory.deserts,
   availableAddons:[
     Addon(name: "extra sauce", price: 5.0,),
     ],
   ),

   Food( // (2)
  name: "carrot cake",
  description: "moist spiced cake made with carrot ",
  imagePath: "lib/imgs/deserts/cc.jpg",
  price: 10.0,
   category: FoodCategory.deserts,
   availableAddons:[
      Addon(name: "extra sauce", price: 5.0,),
     ],
   ),

   Food( // (3)
  name: "macron",
  description: "light, delicate cookies with a creamy filling ",
  imagePath: "lib/imgs/deserts/mac.jpg",
  price: 20.0,
   category: FoodCategory.deserts,
   availableAddons:[
     Addon(name: "extra sauce", price: 5.0,),
     ],
   ),

   Food( // (4)
  name: "pancake",
  description: "Fluffy, flat round cake ",
  imagePath: "lib/imgs/deserts/pan.jpg",
  price: 25.0,
   category: FoodCategory.deserts,
   availableAddons:[
     Addon(name: "extra sauce", price: 5.0,),
     ],
   ),

   Food( // (5)
  name: "san spestian",
  description: "Rich, creamy cheesecake with a caramelized,burnt top crust ",
  imagePath: "lib/imgs/deserts/sspa.jpg",
  price: 25.0,
   category: FoodCategory.deserts,
   availableAddons:[
     Addon(name: "extra sauce", price: 5.0,),
     ],
   ),


//drinks
Food( // (1)
  name: "Coke",
  description: "cola ",
  imagePath: "lib/imgs/drinks/cola.jpg",
  price: 3.0,
   category: FoodCategory.drinks,
   availableAddons:[
     Addon(name: "extra ice", price: 1.0,),
     ],
   ),

   Food( // (2)
  name: "coffee",
  description: "coffee",
  imagePath: "lib/imgs/drinks/coofe.jpg",
  price: 22.0,
   category: FoodCategory.drinks,
   availableAddons:[
           Addon(name: "extra ice/hot", price: 1.0,),

     ],
   ),

   Food( // (3)
  name: "lemonade",
  description: "freshly made ",
  imagePath: "lib/imgs/drinks/lemon.jpg",
  price: 10.0,
   category: FoodCategory.drinks,
   availableAddons:[
          Addon(name: "extra ice", price: 1.0,),

     ],
   ),

   Food( // (4)
  name: "mojito",
  description: "Freshly made ",
  imagePath: "lib/imgs/drinks/moj.jpg",
  price: 10.0,
   category: FoodCategory.drinks,
   availableAddons:[
          Addon(name: "extra ice", price: 1.0,),

     ],
   ),

   Food( // (5)
  name: "water",
  description: "water ",
  imagePath: "lib/imgs/drinks/water.jpg",
  price: 1.0,
   category: FoodCategory.drinks,
   availableAddons:[
          Addon(name: "extra ice", price: 1.0,),

     ],
   ),
];
// getter 
List<Food> get menu => _menu;
List<CartItem> get cart => _cart;
// operations (add to cart-remove)(total price)(total items)(clear cart)

//cart
final List<CartItem> _cart =[];

//add to cart 
void addToCart(Food food , List<Addon> selectedAddons){
  //checking
  CartItem? cartItem =_cart.firstWhereOrNull((item){
//1
bool isSameFood = item.food == food;
//2
bool isSameAddon = ListEquality().equals(item.selectedAddons,selectedAddons);
return isSameFood && isSameAddon;
  });
  // شراء نفس item
  if(cartItem != null){
    // if the item already exist in cart ++ this item
      cartItem.quantity++; 
      //cartItem.quantity = (cartItem.quantity ?? 0 ) + 1; --> second way to check
  }
  else{
    _cart.add( 
      CartItem(
        food: food,
         selectedAddons: selectedAddons,
         quantity:1,
         ),
         );
  }
  notifyListeners();//update

  
}
         // remove from cart
void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if (cartIndex != -1){
    if(_cart[cartIndex].quantity > 1 ){
      _cart[cartIndex].quantity --;
    }else{
      _cart.removeAt(cartIndex);
    }
  }
  notifyListeners();
}

        // get total price of a cart
        double getTotalPrice(){
          double total =0.0;

          for (CartItem cartItem in _cart) {
            double itemTotal = cartItem.food.price;

            for (Addon addon in cartItem.selectedAddons) {
              itemTotal += addon.price;
            }
            total += itemTotal * cartItem.quantity ;
          }
          return total;
        }

        // get total number of items
        get getTotalItemCount {
             int totalItemCount =0 ;

             for (CartItem cartItem in _cart) {
               totalItemCount +=cartItem.quantity;
             }
             return totalItemCount;
        }

        // clear cart
        void clearCart(){
          _cart.clear();
          notifyListeners();//update
        }

                                                                    /*helpers*/
//recepit --> methods
String displayCartReceipt(){
  final recepit = StringBuffer();
  recepit.writeln("Here's your recepit. ");
  recepit.writeln();

  //date including seconds
String formattedDate = DateFormat('YYYY-MM-dd HH:mm:ss').format(DateTime.now());
  recepit.writeln(formattedDate);
  recepit.writeln();
  recepit.writeln("-----------");

  for (final cartItem in _cart) {
    recepit.writeln(
      "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        recepit.writeln("    Add-ons:   ${_formatAddons(cartItem.selectedAddons)}");
        
      }
  recepit.writeln();
  }
  recepit.writeln("----------------");
  recepit.writeln();
  recepit.writeln("Total Items: ${getTotalItemCount()}");
  recepit.writeln("Total price: ${_formatPrice(getTotalPrice())}");

  return recepit.toString();
}
//double to to money
String _formatPrice(double price){
  return "\$" + price.toStringAsFixed(2);//
}
 //summary
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", "); //  --->  اصعب بس ارتب
  }

}
// correcting the error :
extension on List<CartItem> {
  firstWhereOrNull(bool Function(dynamic test) param0) {}
}