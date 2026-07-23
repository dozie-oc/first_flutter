import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/models/diet_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getInitialInfo(){
    categories = CategoryModel.getCategories();
    diets = DietModel.getdiets();
  }

  @override
  Widget build(BuildContext context){
    _getInitialInfo();
    return  Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(children:[
        _searchField(),
        _categoriesSection(),
        SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Recommendation' '\n' 'for diet',
                style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 240,
              child: ListView.separated(
                itemCount: diets.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20
                  ),
                separatorBuilder: (context, index) => SizedBox(width: 25),
                itemBuilder: (context, index) {
                  return Container( 
                    width: 200,
                    decoration: BoxDecoration(
                      color: diets[index].boxColor.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(diets[index].iconpath),
                          ),
                        ),
                        Text(
                          diets[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14
                          ),
                        ),
                        Text(
                          diets[index].level + ' | ' + diets[index].duration
                          + ' | ' + diets[index].calorie,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 12
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xff90CEFF),
                              Color(0xff92A3FD)])
                          ),
                        child : Center(child: Text(
                          'Start',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 14
                          ),
                          )
                        )
                        )
                    ],
                    )
                  );
                },
              ),
        )
        ],
        ),
      ],
      ),
      );
  }

  Column _categoriesSection() {
    return Column(
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
            // color: Colors.white,
            child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 20,
                right: 20
                ),
              separatorBuilder: (context, index) => SizedBox(width: 25),
              itemBuilder: (context, index) {
                return Container( 
                  width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(categories[index].iconpath),
                    ),
                    ),
                    Text(
                      categories[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14
                      ),
                    )
                  ],
                )
                );
              },
            ),
          ),
          // Add your category widgets here
        ],
      );
  }

  Container _searchField() {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff101617).withValues(alpha: 0.11),
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
              child: SvgPicture.asset('assets/icons/Search.svg'),
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
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
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