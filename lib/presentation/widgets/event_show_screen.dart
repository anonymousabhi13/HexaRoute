import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EventShowScreen extends StatefulWidget {
  final String? image;
  final String? name;
  final String? description;

  const EventShowScreen(
      {super.key, required this.image, this.name, this.description});

  @override
  State<EventShowScreen> createState() => _EventShowScreenState();
}

class _EventShowScreenState extends State<EventShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      height: 350,
      width: 30.w,
      child: Column(
        children: [
          Container(
            height: 25.h,
            width: 80.w,
            decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image:  DecorationImage(
                  image: NetworkImage(widget.image.toString()),
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.name.toString(),
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              widget.description.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
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
                child: const Text(
                  "Explore",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  debugPrint("Explore");
                },
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
