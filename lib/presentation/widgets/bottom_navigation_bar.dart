import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      onTap: (int val) => setState(() => _index = val),
      currentIndex: _index,
      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        FloatingNavbarItem(icon: Icons.directions_car, title: 'Cabs'),
        FloatingNavbarItem(icon: Icons.hotel, title: 'Bookings'),
        FloatingNavbarItem(icon: Icons.design_services, title: 'My Services'),
      ],
    );
  }
}
