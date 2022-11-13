import 'package:flutter/material.dart';

class YoutubeDemo extends StatelessWidget {
  final List<String> entries = <String>['これはタイトル１です。これはタイトル１です。これはタイトル１です。これはタイトル１です。これはタイトル１です。', 'これはタイトル２です', 'これはタイトル3です'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'youtube demo page',
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
        actions: const [
          Icon(Icons.video_call_outlined),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu_open_outlined),
          SizedBox(width: 24),
        ],
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 130,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                    Image.asset('images/dog.png'),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: const TextStyle(
                              color: Colors.white,
                              height: 1.3,
                              fontSize: 16
                            ),
                              maxLines: 3,
                          ),
                          const Text(
                            '1000回視聴 5日前',
                            style: TextStyle(color: Colors.grey, fontSize: 16)
                          ,)
                        ],
                      ),
                    ),
                    ],
                  )
              );
            },
          ),
      ),
    );
  }
}
