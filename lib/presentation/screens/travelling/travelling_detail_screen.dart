import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';
import 'package:hexatour/presentation/screens/home_screen.dart';
import 'package:hexatour/presentation/screens/travelling/widgets/text_card_widget.dart';
import 'package:hexatour/presentation/screens/travelling/widgets/text_heading_widget.dart';
import 'package:hexatour/presentation/screens/travelling/widgets/text_order_widget.dart';
import 'package:hexatour/presentation/widgets/bottom_navigation_bar.dart';
import 'package:sizer/sizer.dart';

class TravellingDetailScreen extends StatelessWidget {
  const TravellingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextCardWidget(
                              name: 'Spectacular Krabi ',
                              textColor: textBlackColor,
                              myBackgroundColor: textWhiteColor),
                          TextCardWidget(
                              name: 'flexi package',
                              textColor: textBlackColor,
                              myBackgroundColor: textWhiteColor),
                          TextCardWidget(
                              name: '2​​​N Krabi ​​​3​​​N Phuket ',
                              textColor: textBlackColor,
                              myBackgroundColor: textWhiteColor)
                        ],
                      ),
                      const TextCardWidget(
                          name: 'To',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor),
                      const TextCardWidget(
                          name: 'Phuket Gateway',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  color: backgroundGreyColor1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const TextCardWidget(
                            name: 'Traveller Details',
                            textColor: textBlackColor,
                            myBackgroundColor: textWhiteColor),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 4.h,
                              width: 40.w,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Traveller 1',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                              width: 40.w,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Traveller 2',
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const TextCardWidget(
                            name: 'Please Enter Contact Details',
                            textColor: textBlackColor,
                            myBackgroundColor: textWhiteColor),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 4.h,
                              width: 40.w,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Traveller 1',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                              width: 40.w,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Traveller 2',
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 4.h,
                              width: 40.w,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Traveller 1',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                              width: 40.w,
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Traveller 2',
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Container(
                    height: 5.h,
                    width: MediaQuery.of(context).size.width,
                    color: backgroundGreyColor2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextCardWidget(
                            name: 'Exclusions',
                            textColor: textBlackColor,
                            myBackgroundColor: textWhiteColor),
                        TextCardWidget(
                            name: 'Cancellation Policy',
                            textColor: textBlackColor,
                            myBackgroundColor: textWhiteColor)
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextHeadingWidget(
                      name: 'Fare Breakup',
                      textColor: textBlackColor,
                      myBackgroundColor: textWhiteColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      TextOrderWidget(
                          name: 'Fare Breakup - ',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor),
                      TextOrderWidget(
                          name: '5000',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      TextOrderWidget(
                          name: 'Fare Breakup - ',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor),
                      TextOrderWidget(
                          name: '1000',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      TextOrderWidget(
                          name: 'Fare Breakup - ',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor),
                      TextOrderWidget(
                          name: '2000',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      TextOrderWidget(
                          name: '(inclusion of all tax)  ',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor),
                      TextOrderWidget(
                          name: '14587 /-',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextHeadingWidget(
                      name: '2 Adults',
                      textColor: textBlackColor,
                      myBackgroundColor: textWhiteColor),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      TextOrderWidget(
                          name: 'Fare Breakup - ',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor),
                      TextOrderWidget(
                          name: '2000',
                          textColor: textBlackColor,
                          myBackgroundColor: textWhiteColor)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: backgroundGreyColor1,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      child: const TextOrderWidget(
                          name: 'Make A Payment',
                          textColor: textBlackColor,
                          myBackgroundColor: textBlackColor)),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationbar(),
    );
  }

  AppBar _appBar() {
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
