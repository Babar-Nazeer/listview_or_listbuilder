import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.4),
          title: Center(
              child: Text(
            'Feeling Happy',
            style: TextStyle(decoration: TextDecoration.underline),
          )),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return ListTile(
                  textColor: Colors.white,
                  tileColor: Colors.black.withOpacity(.7),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('images/profile1.jpg'),
                  ),
                  title: Text('Babar Nazeer'),
                  subtitle: Text('hello how are u'),
                  trailing: Text('4:45'),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
