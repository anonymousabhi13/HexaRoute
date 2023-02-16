import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexatour/presentation/screens/change_password_screen.dart';
import 'package:hexatour/presentation/widgets/bottom_navigation_bar.dart';
import 'package:hexatour/presentation/widgets/profile_screen_card.dart';
import 'package:sizer/sizer.dart';
import '../../../core/theme/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.green,
                      height: 10.h,
                      margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Profile",
                            style: textTheme.subtitle2?.copyWith(
                                fontSize: 22.sp, color: textBlackColor),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/Images/dp.jpg'),
                              fit: BoxFit.contain),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Name ',
                        style: textTheme.subtitle2
                            ?.copyWith(fontSize: 16.sp, color: textBlackColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Phone no.',
                        style: textTheme.subtitle2
                            ?.copyWith(fontSize: 16.sp, color: textBlackColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Email',
                        style: textTheme.subtitle2
                            ?.copyWith(fontSize: 16.sp, color: textBlackColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ChangePasswordScreen()));
                        },
                        child: Text(
                          'Change Password',
                          style: textTheme.subtitle2?.copyWith(
                              fontSize: 16.sp, color: textBlackColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Log out',
                        style: textTheme.subtitle2
                            ?.copyWith(fontSize: 16.sp, color: textBlackColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Help & Support',
              textAlign: TextAlign.center,
              style: textTheme.subtitle2
                  ?.copyWith(color: textBlackColor, fontSize: 12.sp),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Terms & Conditions',
              textAlign: TextAlign.center,
              style: textTheme.subtitle2
                  ?.copyWith(color: textBlackColor, fontSize: 12.sp),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'TourSupport@gmail.com',
              textAlign: TextAlign.center,
              style: textTheme.subtitle2
                  ?.copyWith(color: textBlackColor, fontSize: 12.sp),
            ),
          ),
          const BottomNavigationbar()
        ])));
  }
}
