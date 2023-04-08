import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOO ANIMATION',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Foo Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrData = [
    {
      "name":"Ganesh",
      "phono":"9380247***",
      "unread":'5',
    },
    {
      "name":"Appu",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Manju",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Appa",
      "phono":"9380247***",
      "unread":'10',
    },
    {
      "name":"Amma",
      "phono":"9380247***",
      "unread":'50',
    },
    {
      "name":"Ganesh",
      "phono":"9380247***",
      "unread":'5',
    },
    {
      "name":"Appu",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Manju",
      "phono":"9380247***",
      "unread":'2',
    },
    {
      "name":"Appa",
      "phono":"9380247***",
      "unread":'10',
    },
    {
      "name":"Amma",
      "phono":"9380247***",
      "unread":'50',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Container(
          child: ListView(
            children: arrData.map((value) =>
            ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text(value["name"].toString()),
              subtitle: Text(value["phono"].toString()),
              trailing: CircleAvatar(
                radius: 12,
                  backgroundColor: Colors.green,
                  child: Text(value["unread"].toString())),
            )
            ).toList()
          ),
        ),
    );
  }
}
