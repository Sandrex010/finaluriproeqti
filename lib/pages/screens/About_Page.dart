import 'package:flutter/material.dart';

class About_Page extends StatelessWidget {
  const About_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('პროექტის შესახებ'),
      ),
      body: Column(
        children:  [
          const Image(
            image: AssetImage("assets/images/foto.png"),
          ),
          const SizedBox(height: 64,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              "პროექტი მომზადდა USAID-ის სამოქალაქო განათლების პროგრამის ფარგლებში, პარტნიორი ორგანიზაცია ჯეოლაბის კურსის ფინალურ ეტაპზე. პროგრამა ხორციელდებPH international-ის მიერ,აშშ საერთაშორისო განვითარების სააგენტოს (USAID) დაფინანსებითა და საქართველოს განათლებისა და მეცნიერების სამინისტროს მხარდაჭერით.",
              style: TextStyle(fontSize: 16, color: Colors.cyan,),
            ),
          ),
        ],
      ),
    );
  }
}
