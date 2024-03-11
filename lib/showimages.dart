import 'package:flutter/material.dart';

class ShowImages extends StatefulWidget {
  const ShowImages({super.key});

  @override
  State<ShowImages> createState() => ShowImagesState();
}

class ShowImagesState extends State<ShowImages> {
  int? selectedIndex = 0;

  final List<String> imageList = [
    "assets/images/Mercury.png",

    "assets/images/Venus.png",

    "assets/images/Earth.png",

    "assets/images/Mars.png",

    "assets/images/Jupiter.png",

    "assets/images/Uranus.png",

  ];

  void showNextImage() {
    setState(() {
      selectedIndex = (selectedIndex == imageList.length - 1)
          ? selectedIndex = 0
          : selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Show Images"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageList[selectedIndex!],
                width: 400,
                height: 400,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: showNextImage,
                child: const Text("Next"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: const Text("Reset"),
              ),
            ],
          ),
        ));
  }
}
