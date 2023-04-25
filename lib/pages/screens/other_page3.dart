import 'package:flutter/material.dart';
import 'package:untitled4/main.dart';

class OtherPage3 extends StatelessWidget {
  const OtherPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      actions: [
        IconButton(
          onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const HomePage()));},
          icon: const Icon(Icons.home),
        ),
      ],
    ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 75,
              ),
              child:  
               const Text(
                " გილოცავთ!",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: 350, child:


            Image(image: NetworkImage("http://clipart-library.com/images/8TE6knjec.png"))),


          ],
        )
      ]),
    );
  }
}
