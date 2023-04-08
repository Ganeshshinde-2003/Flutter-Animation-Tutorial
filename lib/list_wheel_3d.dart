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
      home: const MyHomePage(title: 'Foo Animation-3D List'),
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

  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: ListWheelScrollView(
          children: arrIndex.map((e) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text("$e", style: TextStyle(fontSize: 30, color: Colors.white),)),
              width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(21),
            ),
            ),
          )).toList(),
          itemExtent: 200,
        )
    );
  }
}
