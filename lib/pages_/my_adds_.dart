// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyAdds_ extends StatelessWidget {
  const MyAdds_({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "My Ads",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(labelColor: Colors.black, tabs: [
            Tab(
              child: Column(
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  Text('My Ads'),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  Icon(Icons.favorite),
                  Text('My Favourites'),
                ],
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 17,
                mainAxisSpacing: 40,
                childAspectRatio: 0.8,
              ),
              itemCount: 2,
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
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(
                      'Apple Watch',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text('Series 6 . Red'),
                    leading: Image.asset('assets/watch.png'),
                    trailing: Text(
                      '\$ 359',
                      style: TextStyle(
                        color: Color(0xff5956E9),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              }),
            ),
          )
        ]),
      ),
    );
  }
}
