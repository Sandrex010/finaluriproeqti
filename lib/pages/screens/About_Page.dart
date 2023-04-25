import 'package:flutter/material.dart';

class About_Page extends StatelessWidget {
  const About_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('პროექტის ინფო'),
      ),
      body: Container( width: 70, height: 70, margin: EdgeInsets.only(top: 260, ),
        child: Row(
          children: [
            Image(image: AssetImage("assets/images/logo.jpg")),



            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "პროექტი მომზადდა USAID-ის სამოქალაქო განათლების პროგრამის ფარგლებში, პარტნიორი ორგანიზაცია ჯეოლაბის კურსის ფინალურ ეტაპზე. პროგრამა ხორციელდებPH international-ის მიერ,აშშ საერთაშორისო განვითარების სააგენტოს (USAID) დაფინანსებითა და საქართველოს განათლებისა და მეცნიერების სამინისტროს მხარდაჭერით.",
                      style: TextStyle(fontSize: 5 , color: Colors.cyan),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
