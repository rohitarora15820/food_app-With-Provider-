import 'package:flutter/material.dart';
import 'package:provider_food_delivery/screens/my_profile/my_profile.dart';
import 'package:provider_food_delivery/screens/review_cart/review_cart.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});

  Widget listTile({IconData? icon, String? title, Function()? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, size: 32),
      title: Text(
        title!,
        style: const TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color(0xffd1ad17),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white54,
                  radius: 43,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://s3.envato.com/files/328957910/vegi_thumb.png"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Welcome Guest"),
                    const SizedBox(height: 7),
                    SizedBox(
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: const BorderSide(width: 2)))),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          listTile(
            icon: Icons.home_outlined,
            title: "Home",
            onTap: () => Navigator.pop(context),
          ),
          listTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ReviewCart(),
                ));
              },
              icon: Icons.shop_outlined,
              title: "Review Cart"),
          listTile(
              icon: Icons.person_outline,
              title: "My Profile",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ));
              }),
          listTile(icon: Icons.notifications_outlined, title: "Notifications"),
          listTile(icon: Icons.star_outline, title: "Ratings & Review"),
          listTile(icon: Icons.favorite_outline, title: "WishList"),
          listTile(icon: Icons.copy_outlined, title: "Raise a Complaint"),
          listTile(icon: Icons.format_quote_outlined, title: "FAQs"),
          Container(
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Contact Support"),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Text("Call us:"),
                      SizedBox(width: 10),
                      Text("+918295883688")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Text("Mail us:"),
                      SizedBox(width: 10),
                      Text("rohitarora15820@gmail.com")
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
