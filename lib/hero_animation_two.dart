import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Detailed-Page")),
      ),
      body: Container(
        child: Hero(
          child: Image.asset("asset/images/boy.png",width: double.infinity, height: 400,),
          tag: "hero-image",
        ),
      ),
    );
  }

}