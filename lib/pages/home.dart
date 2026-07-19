import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

List<CategoryModel> categories = [];

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(children:[
        _searchField(),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
              height: 100,
              color: Colors.green,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container()
                },
              ),
            ),
            // Add your category widgets here
          ],
        )
        ]),
        );
  }

  Container _searchField() {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff101617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0
            )
          ]
        ),
        child: TextField(
          decoration: InputDecoration(
            filled:true,
            fillColor: Colors.white,
            hintText: 'Search for food',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset('assets/icons/search.svg'),
            ),
            suffixIcon: SizedBox(
              width: 50,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      width: 1,
                      indent: 12,
                      endIndent: 12, 
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
            contentPadding: EdgeInsets.all(5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none
            )
          ), 
        )
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