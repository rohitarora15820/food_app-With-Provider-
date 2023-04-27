import "package:flutter/material.dart";
import "package:provider_food_delivery/config/color.dart";

class SingleItem extends StatefulWidget {
  final bool? isBools;
  const SingleItem({super.key, this.isBools});

  @override
  State<SingleItem> createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 100,
                child: Center(
                    child: Image.network(
                        "https://m.media-amazon.com/images/I/51W8xfdp-iL.jpg")),
              )),
              Expanded(
                  child: Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: widget.isBools == false
                      ? MainAxisAlignment.spaceAround
                      : MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ProdctName",
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "50\$/50 Gram",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    widget.isBools == false
                        ? Container(
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(children: [
                              Expanded(
                                child: Text(
                                  "50 Gram",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: primaryColor,
                                ),
                              )
                            ]),
                          )
                        : Text("50 Gram")
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                height: 100,
                padding: widget.isBools == false
                    ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                    : EdgeInsets.only(left: 15, right: 15),
                child: widget.isBools == false
                    ? Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: primaryColor,
                              size: 20,
                            ),
                            Text(
                              "ADD",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 14),
                            ),
                          ],
                        )),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.black54,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: primaryColor,
                                  size: 20,
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 14),
                                ),
                              ],
                            )),
                          )
                        ],
                      ),
              )),
            ],
          ),
          widget.isBools == false
              ? Container()
              : Divider(
                  color: Colors.black38,
                  height: 1,
                )
        ],
      ),
    );
  }
}
