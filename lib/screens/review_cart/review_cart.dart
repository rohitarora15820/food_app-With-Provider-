import 'package:flutter/material.dart';
import 'package:provider_food_delivery/config/color.dart';

import '../../widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text("\$ 170.00",style: TextStyle(color: Colors.green[900]),),
        trailing: Container(width: 160,
        child: MaterialButton(onPressed: (){},
        child: Text("Submit"),
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),

        ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title:  Text("Review Cart",style: TextStyle(color: textColor,fontSize: 18),),),
    body: ListView(
      children:  [
        SizedBox(height: 10,),
        SingleItem(isBools: true,),

         SingleItem(isBools: true,),
          SingleItem(isBools: true,),
           SingleItem(isBools: true,),
        SizedBox(height: 10,)
      ],
    ),
    );
  }
}