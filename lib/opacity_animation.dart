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

  var _opcity = 1.0;
  var _flag = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: _opcity, duration: Duration(seconds: 2), curve: Curves.fastOutSlowIn,
              child:Container(
                height: 100,
                width: 200,
                color: Colors.blueGrey,
              ),
              ),
            SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              setState(() {
                if(_flag){
                  _opcity = 0.0;
                  _flag = false;
                }
                else{
                  _opcity = 1.0;
                  _flag = true;
                }
              });
            }, child: Text("Opacity")),
          ],
        ),
      ),
    );
  }
}
