import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Margins And Pading',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Margins And Pading'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Margins And Padings"),


      ) ,body: Column(
        
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, top: 16 , right: 16,),
           child: Image(
              image:
                  NetworkImage('https://cdn.wallpapersafari.com/7/53/aEdXzA.jpg'),
            ),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,


            ),
            SizedBox(
              width: 32,
            )
            , Container(
      color: Colors.green,
      height: 100,
      width: 100,
            )  ],
        )
      ],
    ),






    );
  }
}