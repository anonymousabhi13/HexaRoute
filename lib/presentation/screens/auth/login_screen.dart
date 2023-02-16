import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';
import 'package:hexatour/presentation/screens/auth/login_screen.dart';
import 'package:hexatour/presentation/screens/auth/signin_screen.dart';
import 'package:hexatour/presentation/screens/home_screen.dart';
import 'package:hexatour/presentation/screens/reset_password_screen.dart';

import 'package:hexatour/presentation/widgets/custom_input_field.dart';
import 'package:hexatour/presentation/widgets/input_text_title.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      alignment: Alignment.center,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text('Welcome Back',
                          style: textTheme.headlineLarge?.copyWith(
                              color: textGreyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('To',
                          style: textTheme.headlineLarge?.copyWith(
                              color: textGreyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Hexa',
                              style: textTheme.headlineLarge?.copyWith(
                                  color: textGreyColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50)),
                          const SizedBox(
                            width: 8,
                          ),
                          const SizedBox(
                            height: 50,
                            width: 60,
                            child: Image(
                              image: AssetImage('assets/Images/road.jpg'),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text('Route',
                              style: textTheme.headlineLarge?.copyWith(
                                  color: textGreyColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.sp)),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
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
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ResetPasswordScreen()));
                        },
                        child: Text(
                          'Forget Password?',
                          style: textTheme.headline1?.copyWith(
                            color: eucalyptusColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                            child: Text(
                              'Create New Account',
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

  // void _goToMainScreen(BuildContext context, TextTheme textTheme) {
  //   context.pushNamed(mainPage);
  // }

  Widget passwordTextFieldWidget(TextTheme textTheme, String password,
      FormFieldValidator<String> validator) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 45,
        minWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              obscureText: !visible,
              cursorColor: aquaGreenColor,
              style: textTheme.subtitle2?.copyWith(color: textWhiteColor),
              maxLines: 1,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: Icon(
                    visible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    // color: iconTintColor,
                    size: 15,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 23.0, vertical: 0.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: aquaGreenColor, width: 0.5),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: textFieldColor, width: 0.0),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                border: InputBorder.none,
                hintStyle:
                    textTheme.headline4?.copyWith(color: textInputTitleColor),
                hintText: password,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget RePasswordTextFieldWidget(TextTheme textTheme, String password,
      FormFieldValidator<String> validator) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 45,
        minWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              obscureText: !visibleRe,
              cursorColor: aquaGreenColor,
              style: textTheme.subtitle2
                  ?.copyWith(color: textWhiteColor, fontSize: 20),
              maxLines: 1,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      visibleRe = !visibleRe;
                    });
                  },
                  child: Icon(
                    visibleRe
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    // color: iconTintColor,
                    size: 15,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 23.0, vertical: 0.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: aquaGreenColor, width: 0.5),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: textFieldColor, width: 0.0),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                border: InputBorder.none,
                hintStyle:
                    textTheme.headline4?.copyWith(color: textInputTitleColor),
                hintText: password,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
