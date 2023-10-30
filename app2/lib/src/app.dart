import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const String _title="Ejemplo N# 01";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyCount(),
    );
  }
}

class MyCount extends StatefulWidget{
  const MyCount({super.key});
  
  @override
  State<StatefulWidget> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount>{
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("Ejemplo N° 1",
      style: TextStyle(fontSize: 35.0, fontFamily: "cursive"),),
      backgroundColor:  Color.fromARGB(255, 121, 34, 124),
    ),
    body: Center(
      child: Column(
        children: <Widget> [
        SizedBox(
          height: 180.0,
        ),
        Text("El numero es: $_count"),
          const Image(image: AssetImage("images/images.jpg"))
        ],
      ),
    ),
    );
  }

}