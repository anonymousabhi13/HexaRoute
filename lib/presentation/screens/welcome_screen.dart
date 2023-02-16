import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';
import 'package:hexatour/presentation/screens/auth/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        color: whiteColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                        fontSize: 50)),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                // navigate to the next screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const SignUpScreen()));
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
              height: 150,
            ),
          ],
        ),
      ),
    );
  }

 
}
