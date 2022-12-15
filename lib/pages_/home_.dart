// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home_ extends StatelessWidget {
  Home_({super.key});

  List<String> Categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'Computer',
    'Phone',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: NestedScrollView(
        controller: ScrollController(keepScrollOffset: true),
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Nazmul,',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w600),
                        ),
                        //*
                        Text(
                          'Let’s gets something?',
                          style: TextStyle(fontSize: 16),
                        ),
                        //*
                        SizedBox(height: 15),
                        Container(
                          height: 118,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: 287,
                                height: 118,
                                decoration: BoxDecoration(
                                  color: Color(0xffF46D38),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text(
                                        '40% Off During\nCovid 19',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        'assets/vegetables.png',
                                        height: 62,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 287,
                                height: 118,
                                decoration: BoxDecoration(
                                  color: Color(0xff3861F4),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text(
                                        '40% Off During\nCovid 19',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                          'assets/vegetables.png',
                                          height: 62),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //*
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Categories',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFF4800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          height: 40,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Categories.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Text(Categories[index]),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                )
              ]),
            )
          ];
        }),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 17,
              mainAxisSpacing: 40,
              childAspectRatio: 0.8,
            ),
            itemCount: 5,
            itemBuilder: ((context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -40,
                      right: 10,
                      left: 10,
                      child: Image.asset('assets/watch.png'),
                    ),
                    Positioned(
                      bottom: 65,
                      left: 27,
                      child: Text(
                        'Apple Watch',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 27,
                      child: Text('Series 6 . Red'),
                    ),
                    Positioned(
                      bottom: 13,
                      left: 27,
                      child: Text(
                        '\$ 359',
                        style: TextStyle(
                          color: Color(0xff5956E9),
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
