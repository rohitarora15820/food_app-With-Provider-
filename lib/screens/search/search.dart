import "package:flutter/material.dart";
import "package:provider_food_delivery/config/color.dart";
import 'package:provider_food_delivery/widgets/single_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: textColor),
        title:const  Text("Search"),
        backgroundColor: primaryColor,
        actions: const [
          Icon(Icons.menu)
        ],
      ),
      body: ListView(
        children: [
          ListTile(title: Text("Items"),),
          Container(height: 52,
          child: TextField(
             decoration:InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30)
              ),
              fillColor: Color(0xffc2c2c2),
              filled: true,
              hintText: "Search for items in the store..."
              ,suffixIcon: Icon(Icons.search)
             ),
          ),
         ),
         SizedBox(height: 10,),
         SingleItem(isBools: false,),
         SingleItem(isBools: false),
         SingleItem(isBools: false),
         SingleItem(isBools: false),
        ],
      ),
    );
  }
}