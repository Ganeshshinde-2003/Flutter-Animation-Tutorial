import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation/hero_animation_two.dart';

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
      home: MyHomePage(title: "Foo Animation")
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Hero(
              tag: "hero-image",
              child: Image.asset("asset/images/boy.png", width: 150, height: 100,),
            ),
          ),
        ),
      )
    );
  }
}



















