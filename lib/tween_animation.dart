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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late Animation animation;
  late Animation colorAnimaiton;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween(begin: 200.0, end: 400.0).animate(animationController);
    colorAnimaiton = ColorTween(begin: Colors.blue, end: Colors.orange).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.forward();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Center(
          child: Container(
            height: animation.value,
            width: animation.value,
            color: colorAnimaiton.value,
          ),
        ),
    );
  }
}






























