// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:threedimmodelapp/Component/productcard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;


  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Category',
      style: optionStyle,
    ),
    Text(
      'Index 2: Notifications',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {


    productcard productcart1 = const productcard(
      hyperlink: "https://app.vectary.com/p/4Vi5wpmhCyxDw8RXlszZ6R",
      text1: 'Shoes Vectary', text2: 'HEADPHONES', text3: 'TECHONOLOGY',);

      productcard productcart2 = const productcard(
      hyperlink: "https://app.vectary.com/p/50bWsHdOsTdBLAik8KXy7a",
      text1: 'Keyboard Vectary', text2: 'KEYBOARD', text3: 'TECHONOLOGY',);

      productcard productcart3 = const productcard(
      hyperlink: "https://app.vectary.com/p/18WuOBWEusmWfzIms57bDT",
      text1: 'WATCH Vectary', text2: 'WATCH', text3: 'FASHION',);


    productcard productcart4 = const productcard(
      hyperlink: "https://app.vectary.com/p/5ITJFM6myi8TtOaOV54GGJ",
      text1: 'Hello Vectary', text2: 'WORDS', text3: 'FUN',);

      productcard productcart5 = const productcard(
      hyperlink: "https://app.vectary.com/p/0TouINN7x0JOapTUIbpzOY",
      text1: 'MOBILE Vectary', text2: 'SMART PHONE', text3: 'TECHONOLOGY',);

      productcard productcart6 = const productcard(
      hyperlink: "https://app.vectary.com/p/4k5cWMa3ElTfopHhIM1Isx",
      text1: 'Fan Vectary', text2: 'FAN', text3: 'HOME DECOR',);


      


      


    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text(widget.title)),
            backgroundColor: Colors.blueAccent,
            elevation: 0,
            bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.face),
              ),
            ],
          ),
          ),


          body:TabBarView(
          children: <Widget>[
            Center(
              child: SafeArea(
            child:ListView(
              scrollDirection: Axis.vertical,
              children: [
                productcart1,
                productcart2,
                productcart3,
              ], 
            ), ),
            ),
            Center(
              child: SafeArea(
            child:ListView(
              scrollDirection: Axis.vertical,
              children: [
                productcart4,
                productcart5,
                productcart6,
              ], 
            ), ),
            ),
          ],
        ),
          
          
          
          
          


          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
            // Add your onPressed code here!
             },
          label: const Text('Cart'),
          icon: const Icon(Icons.shopping_cart),
          backgroundColor: Colors.pink,
        ),



          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,



          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.blueGrey,
          onTap: _onItemTapped,
        ),
          ),
    );
  }
}
