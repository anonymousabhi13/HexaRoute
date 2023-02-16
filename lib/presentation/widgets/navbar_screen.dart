import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: textWhiteColor,
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          color: textBlackColor,
          iconSize: 40,
          onPressed: () {
            debugPrint('Menu Button Pressed');
          },
        );
      }),
      title: const SizedBox(
        height: 40,
        width: 280,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Search',
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.favorite),
          color: textBlackColor,
          iconSize: 40,
          onPressed: () {
            debugPrint('Menu Button Pressed');
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          color: textBlackColor,
          iconSize: 40,
          onPressed: () {
            debugPrint('Menu Button Pressed');
          },
        )
      ],
    );
  }
}
