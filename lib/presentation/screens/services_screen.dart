import 'package:flutter/material.dart';
import 'package:hexatour/core/theme/colors.dart';
import 'package:hexatour/presentation/screens/auth/signin_screen.dart';
import 'package:sizer/sizer.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
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
                    backgroundColor: eucalyptusColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0))),
                child: const Text(
                  "Filter",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ListView.builder(
                physics:const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 18,
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
        ),
      ),
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
