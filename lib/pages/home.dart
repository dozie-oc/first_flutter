import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: const Text(
            'What do you want for dinner?',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],)
        
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Dinner',
      style : TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        ),
    ),
    backgroundColor: Colors.orange,
    centerTitle: true,
    leading: GestureDetector(
      onTap: () {
        // Handle the tap event here
      },
      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(50, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          // Handle the tap event here
        },
      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 30,
        decoration: BoxDecoration(
          color: const Color.fromARGB(50, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset('assets/icons/dots.svg',
        height: 5,
        width: 5,
      )
      )
      ),
  ]);
  }
}