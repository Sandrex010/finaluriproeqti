import 'package:flutter/material.dart';

class other_page3 extends StatelessWidget {
  const other_page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          margin: EdgeInsets.only(
             top: 750, left: 250,
          ),
          child: Text(
            " გილოცავთ! ",
            style: TextStyle(
              color: Colors.green,
              fontSize: 50,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 350,
                margin: EdgeInsets.only(bottom: 250, right: 2500, ),
                child: Image(
                    image: NetworkImage(
                        ""))),
          ],
        )
      ]),
    );
  }
}
