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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color(0xffffedd2),
                Color(0xfffcd9f),
                Color(0xffffcd57),
              ],
              center: Alignment.topCenter,
            )



            // LinearGradient(
            //   colors: [
            //     Color(0xfff6d365),
            //     Color(0xfffda08)
            //   ],
            //   begin: FractionalOffset(1.0,0.0),
            //   end: FractionalOffset(1.0,1.0),
            // )
          ),
        ),
    );
  }
}
