//import 'package:flutter/material.dart';
import 'package:healthhub/models/food.dart';
/*بيكون فيه جمع للاكواد كلها وكل الفئات مع تفاصيلها
*/ 
class Restaurant {

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
  imagePath: "lib/imgs/deserts/sp.jpg",
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
  imagePath: "lib/imgs/drinks/coof.jpg",
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
// operations (add to cart-remove)(total price)(total items)(clear cart)


//helpers

}