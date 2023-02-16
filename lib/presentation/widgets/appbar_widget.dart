import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';

class AppBarScreenWidget extends StatelessWidget {
  const AppBarScreenWidget({super.key, required bool isHome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: AppBar(
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
        ),
      ),
    );
  }
}
