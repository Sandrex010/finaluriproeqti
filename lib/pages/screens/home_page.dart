import 'package:flutter/material.dart';

import 'other_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
        title: const Text("Home Page"),
    ),
    body: Container(
    color: Colors.amber,
    child: TextButton(
    onPressed: () {   Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const OtherPage();
        },
      ),
    );
    },
      child: const Text("go to other page"),
    ),
    ),

      );
  }
}

