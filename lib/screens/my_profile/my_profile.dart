import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:provider_food_delivery/config/color.dart';
import 'package:provider_food_delivery/screens/home_screen/drawer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  Widget listTile({IconData? icon, String? title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title!),
          trailing: Icon(Icons.arrow_forward),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 18, color: textColor),
        ),
      ),
      drawer: DrawerSide(),
      body: Stack(children: [
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: primaryColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 548,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rohit Arora",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("rohitarora15820@gmail.com")
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: primaryColor,
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(
                                    Icons.edit,
                                    color: primaryColor,
                                    size: 18,
                                  ),
                                  backgroundColor: scaffoldBackgroundColor,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    listTile(icon: Icons.shop_outlined,
                    title: "My Orders"
                    ),
                     listTile(icon: Icons.location_on_outlined,
                    title: "My Delivery Address"
                    ),
                     listTile(icon: Icons.person_outlined,
                    title: "Refer a friend"
                    ),
                     listTile(icon: Icons.file_copy_outlined,
                    title: "Terms & Conditions"
                    ),
                     listTile(icon: Icons.policy_outlined,
                    title: "Privacy Policy"
                    ),
                     listTile(icon: Icons.add_chart_outlined,
                    title: "About"
                    ),
                     listTile(icon: Icons.exit_to_app_outlined,
                    title: "Log Out"
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 130),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: primaryColor,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: scaffoldBackgroundColor,
              backgroundImage: NetworkImage(
                  "https://s3.envato.com/files/328957910/vegi_thumb.png"),
            ),
          ),
        )
      ]),
    );
  }
}
