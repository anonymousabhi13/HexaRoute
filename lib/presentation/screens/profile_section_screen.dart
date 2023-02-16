import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexatour/presentation/screens/profile_screen.dart';
import 'package:hexatour/presentation/screens/travelling/book_service_screen.dart';
import 'package:hexatour/presentation/widgets/bottom_navigation_bar.dart';
import 'package:hexatour/presentation/widgets/profile_screen_card.dart';
import 'package:sizer/sizer.dart';
import '../../../core/theme/colors.dart';

class ProfileSectionScreen extends StatefulWidget {
  const ProfileSectionScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSectionScreen> createState() => _ProfileSectionScreenState();
}

class _ProfileSectionScreenState extends State<ProfileSectionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 20.h,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MENU",
                            style: textTheme.subtitle2?.copyWith(
                                fontSize: 18.sp, color: textBlackColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileOptionsWidget(
                        name: "My Profile",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileScreen()));
                        }),
                    ProfileOptionsWidget(name: "Book a package", onTap: () {}),
                    ProfileOptionsWidget(
                        name: "Book a service",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BookingServiceScreen()));
                        }),
                    ProfileOptionsWidget(name: "Shop section", onTap: () {}),
                    ProfileOptionsWidget(name: "Wishlist", onTap: () {}),
                    ProfileOptionsWidget(name: "My Bookings", onTap: () {}),
                    ProfileOptionsWidget(name: "My Cart", onTap: () {}),
                    ProfileOptionsWidget(name: "Cabs & Booking", onTap: () {}),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Terms & Conditions',
              textAlign: TextAlign.center,
              style: textTheme.subtitle2
                  ?.copyWith(color: textBlackColor, fontSize: 18.sp),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Policy',
              textAlign: TextAlign.center,
              style: textTheme.subtitle2
                  ?.copyWith(color: textBlackColor, fontSize: 18.sp),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Contact US',
              textAlign: TextAlign.center,
              style: textTheme.subtitle2
                  ?.copyWith(color: textBlackColor, fontSize: 18.sp),
            ),
          ),
          const BottomNavigationbar()
        ])));
  }
}
