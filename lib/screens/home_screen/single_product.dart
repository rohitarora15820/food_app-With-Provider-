import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String? productName;
  final String? productImage;
  final Function()? onTap;
  const SingleProduct({super.key,this.productName,this.productImage,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 230,
          width: 160,
          decoration: BoxDecoration(
              color: const Color(0xffd9dad9),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: Image.network(
                        productImage!)),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          productName!,
                          style:const  TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "50\$/50 Gram",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.normal),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(left: 5),
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: const [
                                  Expanded(
                                      child: Text(
                                    '50 Gram',
                                    style: TextStyle(fontSize: 10),
                                  )),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            )),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Icon(Icons.remove,
                                        size: 20, color: Color(0xffd0b84c)),
                                    Text(
                                      "1",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.add,
                                        size: 20, color: Color(0xffd0b84c))
                                  ]),
                            )),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}