import 'package:flutter/material.dart';
import 'package:hexatour/presentation/widgets/bottom_navigation_bar.dart';
import 'package:sizer/sizer.dart';
import '../../../core/theme/colors.dart';

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({Key? key}) : super(key: key);

  @override
  State<MyBookingScreen> createState() => _MyBookingScreenState();
}

// array of images
final List<String> images = [
  'https://travelshopturkey.com/images/destinations/N64VH41587212582.jpg',
  'https://media.tacdn.com/media/attractions-splice-spp-674x446/08/bb/cc/f0.jpg',
  'https://cdn.tourradar.com/s3/content-pages/2292/1200x630/ItoBTX.png',
  'https://media.tacdn.com/media/attractions-splice-spp-674x446/08/bb/cc/f0.jpg',
  'https://images.thrillophilia.com/image/upload/s--STaUgKMj--/c_fill,g_auto/v1/collections/images/014/894/260/original/1623072513_download_-_2021-06-07T185137.513.png.jpg',
  'https://cdn1.tripoto.com/media/filter/tst/img/1442601/Image/1586428286_5_7.jpg',
  'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/ee/a9/ba.jpg',
];

class _MyBookingScreenState extends State<MyBookingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text('My Booking',
                  style: textTheme.headline5!.copyWith(
                      color: textBlackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp)),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading:
                              Container(
                                height: 100,
                                width: 100,
                                child: Image(image: NetworkImage('${images[index]}'))),
                          title: const Text('The Enchanted Nightingale'),
                          subtitle: const Text(
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
                              child: const Text('cancel'),
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
