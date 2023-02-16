import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';
import 'package:hexatour/presentation/screens/profile_screen.dart';
import 'package:hexatour/presentation/screens/profile_section_screen.dart';
import 'package:hexatour/presentation/widgets/bottom_navigation_bar.dart';

import 'package:hexatour/presentation/widgets/event_show_screen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  List<String> images = [
    "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80",
    "https://images.unsplash.com/photo-1503220317375-aaad61436b1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1539635278303-d4002c07eae3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
  ];
  int activePage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGreyColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _sliderBar(context),
            Container(
              color: textWhiteColor,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicators(images.length, activePage)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  color: textWhiteColor,
                  height: 350,
                  width: double.infinity,
                  child: PageView.builder(
                      itemCount: images.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          // activePage = page;
                        });
                      },
                      itemBuilder: (context, pagePosition) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          child: const EventShowScreen(
                            image:
                                'https://images.unsplash.com/photo-1503220317375-aaad61436b1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                            name: "Afeeq",
                            description:
                                "With 4 international airports, served by a wealth of global carriers, getting to and around the",
                          ),
                        );
                      })),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023.h,
              width: double.infinity,
              child: const Image(
                image: NetworkImage(
                    'https://www.piperon.com/images/pagebuilder/slick-slider/slide-1-2340x850.jpg'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      // navigate to the next screen
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: textGreyColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0))),
                    child: const Text(
                      "Services",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.house_outlined),
                              title: Text('The Enchanted Nightingale'),
                              subtitle: Text(
                                  'Music by Julie Gable. Lyrics by Sidney Stein.'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('BUY TICKETS'),
                                  onPressed: () {/* ... */},
                                ),
                                const SizedBox(width: 8),
                                TextButton(
                                  child: const Text('LISTEN'),
                                  onPressed: () {/* ... */},
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      );
                    })
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationbar(),
    );
  }

  Container _sliderBar(BuildContext context) {
    return Container(
      color: textWhiteColor,
      width: MediaQuery.of(context).size.width,
      height: 210,
      child: PageView.builder(
          itemCount: images.length,
          pageSnapping: true,
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              activePage = page;
            });
          },
          itemBuilder: (context, pagePosition) {
            return Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              child: Image.network(
                images[pagePosition],
                fit: BoxFit.fill,
              ),
            );
          }),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileSectionScreen()));
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

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;
  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(images[pagePosition]))),
  );
}
