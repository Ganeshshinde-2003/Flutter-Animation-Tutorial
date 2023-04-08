import 'package:shared_preferences/shared_preferences.dart';
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

  var _nameController = TextEditingController();
  var nameValue = "No Value Saved";
  static const String KEYNAME = "name";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    label: Text("Name")

                  ),
                ),
                SizedBox(height: 11,),
                ElevatedButton(onPressed: () async {
                  var name = _nameController.text.toString();
                  
                  var prefs = await SharedPreferences.getInstance();
                  
                  prefs.setString(KEYNAME,name);

                }, child: Text("Save")),
                SizedBox(height: 11,),
                Text("$nameValue")
              ],
            ),
          ),
        ),
    );
  }

  void getValue() async {

    var prefs = await SharedPreferences.getInstance();

    var getName = prefs.getString(KEYNAME);

    nameValue = getName != null ? getName : "No Value Saved";
    setState(() {});

  }
}
