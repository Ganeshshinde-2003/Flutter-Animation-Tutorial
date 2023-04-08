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

  var _width = 200.0;
  var _height = 100.0;
  Decoration _deco = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey
  );

  var flag = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: _deco,
              curve: Curves.bounceInOut,
              duration: Duration(
                seconds: 2,

              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              if(flag){
              _width = 100;
              _height = 200;
              _deco = BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              );
              flag = false;
              }
              else{
                _width = 200;
                _height = 100;
                flag = true;
                _deco = BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                );

              }
              setState(() {});
            }, child: Text("Animate")),
            Image.asset("asset/images/flutter-logo.jpg")
          ],
        ),
      ),
    );
  }
}
