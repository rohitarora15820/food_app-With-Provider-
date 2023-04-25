import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider_food_delivery/screens/home_screen/drawer.dart';
import 'package:provider_food_delivery/screens/home_screen/product_overview/product_overview.dart';
import 'package:provider_food_delivery/screens/home_screen/single_product.dart';

import '../../config/color.dart';
import '../search/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffd6b738),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions:  [
          CircleAvatar(
            radius: 12,
            backgroundColor:const  Color(0xffd4d181),
            child: 
            IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SearchPage();
              },));
            }, icon: Icon(
              Icons.search,
              size: 17,
              color: textColor,
            ), )
           
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.cdc.gov/foodsafety/images/comms/features/GettyImages-1247930626-500px.jpg?_=00453'),
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(right: 180, bottom: 10),
                                child: Container(
                                  height: 55,
                                  width: 100,
                                  decoration:  BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(50),
                                          bottomLeft: Radius.circular(50))),
                                  child: const Center(
                                    child: Text(
                                      "Vegi",
                                      style: TextStyle(fontSize: 20, shadows: [
                                        BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 3,
                                            offset: Offset(3, 3))
                                      ]),
                                    ),
                                  ),
                                )),
                            Text(
                              "30% Off",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.green[100],
                                  fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "On all vegetables products",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(child: Container())
                ]),
              ),
               _buildHerbsProducts(),
               _buildFreshProducts(),
               _buildRootProducts()
               
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildHerbsProducts(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Herbs Seasonings'),
              GestureDetector(
                onTap: () {
                 
                },
                child: Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
              onTap: (){
                log("Product");
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProductOverview(
                   productName: "Fresh Basil",
              productImage: "https://m.media-amazon.com/images/I/51W8xfdp-iL.jpg",
                )));
              },
              productName: "Fresh Basil",
              productImage: "https://m.media-amazon.com/images/I/51W8xfdp-iL.jpg",
              
        ),
           SingleProduct(
              onTap: (){},
              productName: "Fresh Basil",
              productImage: "https://m.media-amazon.com/images/I/51W8xfdp-iL.jpg",
              
        ),
           SingleProduct(
              onTap: (){},
              productName: "Fresh Basil",
              productImage: "https://m.media-amazon.com/images/I/51W8xfdp-iL.jpg",
              
        ),
            ],
          )
        ),
      
      ],
    );
  }

  Widget _buildFreshProducts(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fresh Fruits'),
              GestureDetector(
                onTap: () {
                 
                },
                child: Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
              onTap: (){},
              productName: "Water Melon",
              productImage: "https://www.clipartmax.com/png/middle/43-437749_watermelon-clipart-transparent-background-watermelon-image-clip-art.png",
              
        ),
           SingleProduct(
              onTap: (){},
              productName: "Water Melon",
              productImage: "https://www.clipartmax.com/png/middle/43-437749_watermelon-clipart-transparent-background-watermelon-image-clip-art.png",
              
        ),
         SingleProduct(
              onTap: (){},
              productName: "Water Melon",
              productImage: "https://www.clipartmax.com/png/middle/43-437749_watermelon-clipart-transparent-background-watermelon-image-clip-art.png",
              
        ),
            ],
          )
        ),
      
      ],
    );
  }

 Widget _buildRootProducts(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Root Vegetables'),
              GestureDetector(
                onTap: () {
                 
                },
                child: Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
              onTap: (){},
              productName: "Carrot",
              productImage: "https://tiimg.tistatic.com/fp/2/007/852/fresh-narrow-and-cone-shaped-1-kilogram-sweet-tasting-root-vegetable-carrot-1-kg-442.jpg",
              
        ),
               SingleProduct(
              onTap: (){},
              productName: "Carrot",
              productImage: "https://tiimg.tistatic.com/fp/2/007/852/fresh-narrow-and-cone-shaped-1-kilogram-sweet-tasting-root-vegetable-carrot-1-kg-442.jpg",
              
        ),
              SingleProduct(
              onTap: (){},
              productName: "Carrot",
              productImage: "https://tiimg.tistatic.com/fp/2/007/852/fresh-narrow-and-cone-shaped-1-kilogram-sweet-tasting-root-vegetable-carrot-1-kg-442.jpg",
              
        ),
            ],
          )
        ),
      
      ],
    );
  }
  
}
