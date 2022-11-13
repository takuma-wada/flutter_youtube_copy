import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('third page'),
      ),
      body: ListView.separated(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Entry ${entries[index]}',
                style: const TextStyle(fontSize: 30),
              ),
            ));
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.black87,),
        ),
    );
  }
}
