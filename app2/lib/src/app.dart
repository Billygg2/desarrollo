import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const String _title = "Ejemplo N° 01";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyCount(),
    );
  }
}

class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  State<StatefulWidget> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Ejemplo N° 01",
            style: TextStyle(fontSize: 35.0, fontFamily: "cursive"),
          ),
          backgroundColor: Colors.orange),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150.0,
            ),
            Text("El número es: $_count"),
            const ClipOval(
              child: Image(
                image: AssetImage("imges/images.jpg"),),),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 20.0,
          color: Colors.lightBlueAccent,
        ),
      ),
      floatingActionButton: _crearButtoms(),

    );
  }
Widget _crearButtoms() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        ElevatedButton(
          child: Icon(Icons.restore),
          onPressed: (() {
            _count = 0;
          }),
        ),
        Expanded(child: SizedBox()),
        ElevatedButton(
          child: Icon(Icons.add),
          onPressed: (() {
            _count++;
          }),
        )
      ],
    );
  }

}