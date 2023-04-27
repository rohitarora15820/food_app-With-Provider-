import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider_food_delivery/model/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbsProductList = [];
 late ProductModel productModel;

  fetchHerbsProductData() async {
    List<ProductModel> newList = [];
     
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();
    for (var element in value.docs) {
      productModel = ProductModel(
        productName: element.get("productName")?? '',
        productImage: element.get("productImage")?? '',
        productPrice: element.get("productPrice")?? '',
      );
      newList.add(productModel);

    }
    herbsProductList=newList;
    notifyListeners();
  }

List<ProductModel>get getHerbsProductDataList{
    return herbsProductList;
  }
}
