import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexatour/presentation/screens/auth/signin_screen.dart';
import 'package:hexatour/presentation/widgets/bottom_navigation_bar.dart';
import 'package:hexatour/presentation/widgets/custom_input_field.dart';
import 'package:hexatour/presentation/widgets/profile_screen_card.dart';
import 'package:sizer/sizer.dart';
import '../../../core/theme/colors.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Enter Old Password",
                      style: textTheme.headline5?.copyWith(
                          fontSize: 20.sp,
                          color: eucalyptusColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const InputTextWidget(
                      hintName: "Enter old password",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Enter New Password",
                      style: textTheme.headline5?.copyWith(
                          fontSize: 20.sp,
                          color: eucalyptusColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const InputTextWidget(
                      hintName: "Enter new password",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Verify New Password",
                      style: textTheme.headline5?.copyWith(
                          fontSize: 20.sp,
                          color: eucalyptusColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const InputTextWidget(
                      hintName: "Verify new password",
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // navigate to the next screen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 10.0),
                          backgroundColor: eucalyptusColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0))),
                      child: const Text(
                        "Reset your password",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
