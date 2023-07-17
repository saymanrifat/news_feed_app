import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> newsImage = [
    "https://mybangla24.com/static/img/blog/bangla-newspapers-bangladesh.png",
    "https://mybangla24.com/static/img/bangla-newspapers-home.webp",
    "https://topinbangladesh.com/wp-content/uploads/2020/11/Daily-Bangladesh-Pratidin-Newspaper.jpg",
    "https://topinbangladesh.com/wp-content/uploads/2020/11/Daily-Ittefaq-Newspaper.jpg",
    "https://www.mediabuzz.org/wp-content/uploads/2020/11/Bangladesh-Newspapers-18-Ajkaler-Khobor.jpg",
    "https://www.mediabuzz.org/wp-content/uploads/2020/11/Bangladesh-Newspapers-04-Jugantor.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Feed')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2,
            ),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  newsImage[index],
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
