import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';
import 'package:hexatour/presentation/new_credential_screen.dart';
import 'package:hexatour/presentation/widgets/custom_input_field.dart';
import 'package:sizer/sizer.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                      Text('HexaTour',
                          style: textTheme.headlineLarge?.copyWith(
                              color: textGreyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.sp)),
                      const SizedBox(
                        height: 50,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                            'Enter your email below we will send a code to reset your password',
                            textAlign: TextAlign.center,
                            style: textTheme.headlineLarge?.copyWith(
                                color: textGreyColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp)),
                      ),
                      const SizedBox(
                        height: 10,
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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewCredentialScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 10.0),
                            backgroundColor: eucalyptusColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                        child: const Text(
                          "Reset Your Password",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
