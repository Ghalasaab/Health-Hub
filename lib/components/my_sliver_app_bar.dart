import 'package:flutter/material.dart';

// بدل اب بار عادي 
class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
   required this.child,
   required this.title,
   });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false, //لازم يختفي الاب بار عشان يطلع اللي تحته 
      pinned: true, // appbar بيكون موجود فوق مهما ارتفع او انخفض اللي تحته
      actions: [
        // cart button
        IconButton(onPressed: (){},
        icon: const Icon(Icons.shopping_cart),
         )
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
     // foregroundColor: Theme.of(context).colorScheme.inversePrimary, --> error
      title: Text("Health-Hub"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0.0 , right: 0 , top: 0.0),
        expandedTitleScale: 1,
      ),
    );
  }
}