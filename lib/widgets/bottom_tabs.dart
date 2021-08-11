import 'package:evrikart_assignment/screens/bag_page.dart';
import 'package:evrikart_assignment/screens/favorites_page.dart';
import 'package:evrikart_assignment/screens/home_page.dart';
import 'package:evrikart_assignment/screens/profile_page.dart';
import 'package:evrikart_assignment/screens/shop_page.dart';
import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomTabs extends StatefulWidget {
  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  PersistentTabController _controller;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      padding: NavBarPadding.symmetric(horizontal: 1),
      screens: [
        HomePage(),
        ShopPage(),
        BagPage(),
        FavoritesPage(),
        ProfilePage(),
      ],
      backgroundColor: Colors.white,
      items: _navBarItems(),
      confineInSafeArea: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      itemAnimationProperties: ItemAnimationProperties(
        curve: Curves.ease,
        duration: Duration(microseconds: 300),
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
          curve: Curves.decelerate,
          duration: Duration(microseconds: 400),
          animateTabTransition: true),
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_filled),
        inactiveIcon: Icon(Icons.home_outlined),
        title: "Home",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        inactiveIcon: Icon(Icons.shopping_cart_outlined),
        title: "Shop",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_bag),
        inactiveIcon: Icon(Icons.shopping_bag_outlined),
        title: "Bag",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        inactiveIcon: Icon(Icons.favorite_border_outlined),
        title: "Favorites",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        inactiveIcon: Icon(Icons.person_outlined),
        title: "Profile",
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      )
    ];
  }
}
