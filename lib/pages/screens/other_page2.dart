import 'package:flutter/material.dart';
import 'package:untitled4/main.dart';
import 'package:untitled4/pages/screens/other_page3.dart';

class other_page2 extends StatelessWidget {
  const other_page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('არჩევა'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 75),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 300,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const HomePage();
                        },
                      ),
                    );
                  },
                  child: const Text("B/B1 მსუბუქი ავტომობილი"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
