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

  bool isFirst = true;

    @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 4),(){
        isFirst = false;
        setState(() {});
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Container(
            width: 200,
            height: 200,
            color: Colors.grey,
          ),
          secondChild: Container(
            width: 200,
              height: 200,
              child: Image.asset("asset/images/flutter-logo.jpg")),
          sizeCurve: Curves.bounceInOut,
          firstCurve: Curves.fastOutSlowIn,
          secondCurve: Curves.fastOutSlowIn,
          duration: Duration(seconds: 2), crossFadeState: isFirst ? (CrossFadeState.showFirst) : CrossFadeState.showSecond ,
        ),
      ),
    );
  }
}
