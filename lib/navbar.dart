import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:recipe_app/colors.dart';
import 'package:recipe_app/pages/wishlist_page.dart';
import 'package:recipe_app/pages/homepage.dart';
import 'package:recipe_app/pages/profile_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currenIndex = 0;
  List<Widget> pages = [Homepage(), WishlistPage(), UserProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currenIndex],
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black.withOpacity(0.85),
        tabs: [
          GButton(icon: HugeIcons.strokeRoundedHome05),
          GButton(icon: FeatherIcons.heart),
          GButton(icon: Icons.person),
        ],
        color: Colors.white,
        activeColor: yellow,
        selectedIndex: currenIndex,
        onTabChange: (index) {
          setState(() {
            currenIndex = index;
          });
        },
      ),
    );
  }
}
