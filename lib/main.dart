import 'package:flutter/material.dart';

import 'package:untitled4/pages/screens/other_page.dart';
import 'package:untitled4/pages/screens/other_page2.dart';
import 'package:untitled4/pages/screens/About_Page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'მართვის მოწმობის თეორიული ტესტი',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), 
      home: const HomePage(),
     );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) {   return const About_Page(); },));},
            icon: const Icon(Icons.info),
          ),
        ],
        title: const Text("მართვის მოწმობის გამოცდის ტესტი"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 75),
                    width: 250,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const other_page2();
                            },
                          ),
                        );
                      },
                      child: const Text("არჩევა"),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        width: 300,
                        child: const Image(
                            image: NetworkImage(
                                'https://cdn.imedi.ge/new/imedinews/G/1810/38/60/85/Hj_6HeaBDk-itV5_x4IKZg/shutterstock_610906649.jpg')),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            child:


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 75),
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: 250,
                  height: 50,
                  child: 
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const OtherPage();
                          },
                        ),
                      );
                    },
                    child: const Text("დაწყება"),
                  ),
                )
              ],
             ),
          ),
        ],
      ),
     );
  }
}
