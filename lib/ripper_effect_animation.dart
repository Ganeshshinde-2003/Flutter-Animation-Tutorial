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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  var listRadius = [

    150.0,200.0,250.0,300.0,350.0,400.0,

  ];

  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    _animation = Tween(begin: 0.0 , end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children:[
              ripperProducer(listRadius[0]),
              ripperProducer(listRadius[1]),
              ripperProducer(listRadius[2]),
              ripperProducer(listRadius[3]),
              ripperProducer(listRadius[4]),
              ripperProducer(listRadius[5]),
              Icon(Icons.star, color: Colors.white, size: 60,)
            ]
          ),
        ),
    );
  }
  
  Widget ripperProducer(radius){ 
    return(
    Container(
      width: radius*_animation.value,
      height: radius*_animation.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.lightBlue.withOpacity(1.0 - _animation.value),
      ),
    )
    );
  }
  
}
