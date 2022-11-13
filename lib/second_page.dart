import 'package:flutter/material.dart';

import 'third_page.dart';
import 'youtube_demo.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/dog.png'),
            Text(
              name,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('前の画面'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(),
                  ));
              },
              child: const Text('次の画面'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YoutubeDemo(),
                  ));
              },
              child: const Text('youtube トレース'),
            ),
          ],
        ),
      ),
    );
  }
}
