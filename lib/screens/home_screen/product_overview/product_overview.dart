import 'package:flutter/material.dart';

import '../../../config/color.dart';

enum SinginCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String? productName;
  final String? productImage;

  const ProductOverview({super.key,this.productName,this.productImage});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
} 

class _ProductOverviewState extends State<ProductOverview> {
  SinginCharacter _character = SinginCharacter.fill;

  Widget bottomNavBar({
    Color? iconColor,
    Color? backgroundColor,
    Color? color,
    String? title,
    IconData? iconData,
  }) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(20),
      color: backgroundColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(iconData, size: 17, color: iconColor),
        SizedBox(
          width: 5,
        ),
        Text(
          title!,
          style: TextStyle(color: color),
        )
      ]),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Row(
          children: [
            bottomNavBar(
                backgroundColor: textColor,
                color: Colors.white70,
                iconColor: Colors.grey,
                title: "Add to WishList",
                iconData: Icons.favorite_outline),
            bottomNavBar(
                backgroundColor: primaryColor,
                color: textColor,
                iconColor: Colors.white70,
                title: "Go To Cart",
                iconData: Icons.shop_outlined),
          ],
        ),
        appBar: AppBar(
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: textColor),
          title: Text(
            "Product Overview",
            style: TextStyle(color: textColor),
          ),
        ),
        body: Column(
          children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                  width: double.infinity,
                  child: Column(children: [
                     ListTile(
                      title: Text(widget.productName!),
                      subtitle: const Text("\$50"),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.all(40),
                      child: Image.network(
                          widget.productImage!),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Text(
                        "Available Options",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.green[700],
                                ),
                                Radio(
                                  groupValue: _character,
                                  activeColor: Colors.green[700],
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value!;
                                    });
                                  },
                                  value: SinginCharacter.fill,
                                ),
                              ]),
                              Text("\$50"),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color:Colors.grey  ),
                                    borderRadius: BorderRadius.circular(30)),
                                padding:const  EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 15,
                                        color: primaryColor,
                                      ),
                                      Text(
                                        "ADD",
                                        style: TextStyle(color: primaryColor),
                                      )
                                    ]),
                              )
                            ]))
                  ]))),

                  Expanded(child: Container(
                    padding:const EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     const  Text("About this product",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),),
                     const  SizedBox(height: 10,),
                      Text("The leaves are aromatic and have a strong, spicy flavour with hints of licorice. Some varieties have larger leaves, and some have a purple hue. When the plant matures, spikes of lavender and deep purple flowers grow at the tops of the burgundy stems. The flowers share the same intense spice and hint of licorice flavour.",style: TextStyle(
                        fontSize: 16,color: textColor
                      ))
                    ]),
                  ))
        ]));
  }
}
