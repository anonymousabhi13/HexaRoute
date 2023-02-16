import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';
import 'package:hexatour/presentation/screens/auth/login_screen.dart';
import 'package:hexatour/presentation/screens/home_screen.dart';
import 'package:hexatour/presentation/widgets/custom_input_field.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool visible = false;
  bool visibleRe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: body(),
    );
  }

  Widget body() {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 44.0),
          decoration: const BoxDecoration(
              // color: backgroundBalticSeaColor,
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(31.5, 16.00, 31.5, 16.00),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 1.h,
                      ),
                      Text(
                        'HexaRoute',
                        style: textTheme.headline1?.copyWith(
                          color: textGreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Welcome Onboard!',
                        style: textTheme.headline1?.copyWith(
                          color: textRedColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Lets meet up your Destination',
                        style: textTheme.headline1?.copyWith(
                          color: textBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 4.h,
                      ),
                      const InputTextWidget(
                        hintName: 'Ex: Jhon Singh',
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 2.h,
                      ),
                      InputTextWidget(
                        hintName: 'Ex: jhonsingh@gmail.com',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return;
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 2.h,
                      ),
                      InputTextWidget(
                        hintName: 'password',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return;
                        },
                      ),
                      InputTextWidget(
                        hintName: 'DOB (DD/MM/YYYY)',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return;
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 2.h,
                      ),
                      InputTextWidget(
                        hintName: 'Ex: Male/Female',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return;
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 2.h,
                      ),
                      InputTextWidget(
                        hintName: 'Ex: Phone Number',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return;
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 2.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 2.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 2.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 10.0),
                            backgroundColor: eucalyptusColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Already a Member ? ',
                            style: textTheme.headline1?.copyWith(
                              color: textBlackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              'SignIn',
                              style: textTheme.headline1?.copyWith(
                                color: textRedColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
