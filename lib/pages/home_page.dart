//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:healthhub/components/my_current_location.dart';
import 'package:healthhub/components/my_description.dart';
import 'package:healthhub/components/my_drawer.dart';
import 'package:healthhub/components/my_sliver_app_bar.dart';
import 'package:healthhub/components/my_tab_bar.dart';
import 'package:healthhub/models/food.dart';
import 'package:healthhub/models/restaurant.dart';
import 'package:provider/provider.dart';
//import 'package:healthhub/components/my_current_location.dart';

//import '../widgets/recipe_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{


// tabbar controller
late TabController _tabController;

  @override
void initState(){
  super.initState();
  _tabController =TabController(length: FoodCategory.values.length, vsync: this); // كذا ادق
}

  @override
void dispose(){
  _tabController.dispose();
  super.dispose();
}

//sort and return list(food items same cat) --> burgers with burgers
List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
return fullMenu.where((food) => food.category == category).toList();
}

//return list of foodin given cat
List<Widget> getFoodInThisCategory(List<Food>fullMenu){
return FoodCategory.values.map((Category){
List<Food> categoryMenu =_filterMenuByCategory(Category, fullMenu);
return ListView.builder(
  itemCount: categoryMenu.length,
  physics: const NeverScrollableScrollPhysics(),
  itemBuilder: (context, index) {
return ListTile(title:Text(categoryMenu[index].name,) 
);
  },
   );
}).toList();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
     /* appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.background,
        ),*/
      drawer: const MyDrawer() ,
      body: NestedScrollView(
        headerSliverBuilder:(context, innerBoxIsScrolled) => [
          MySliverAppBar( //fancy appbar --> اذانزلت تحت يرتفع appbar 
             title: MyTabBar(tabController: _tabController),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  //color: Theme.of(context).colorScheme.secondary,
                  ),


                // cur location
                MyCurrentLocation(),

                // description
                MyDescription(),

              ],
              ),
             ),
        ],
       //body:RecipeWidget(),
        body: Consumer <Restaurant>(
          builder: (context, restaurant, child) =>TabBarView( //تحت sliver appbar
          controller: _tabController,
          children: getFoodInThisCategory(restaurant.menu),
          /*[
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("hello"),
              ), // 1 tab

            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("hello"),
              ), // 2 tab

            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("hello"),
              ), // 3 tab

            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("hello"),
              ),//4

               ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("hello"),
              ),//5
          ],*/
          ),
        ),
      )
    );
  }
}