// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coffeecup/util/coffee_tile.dart';
import 'package:coffeecup/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>  _HomePageState();
}

class  _HomePageState extends State <HomePage> {
  final List coffeeType= [
    [
      'Milkshake',
      true,
    ],
    [
      'Latte',
       false,
    ],
    [
      'Cappucino',
       false,
    ],
    [
      'Oreomilkshake',
       false,
    ],
    [
      'coffee',
       false,
    ],
    [
      'Blueberryshake',
       false,
    ],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for(int i=0;i<coffeeType.length;i++){
        coffeeType[i][1]=false;
      }
      coffeeType[index][1]= true;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions:[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
          ),
      ]),
      body: Column(children: [
        //find the best coffee
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Text(
            "Find the best coffee for you",
            style: GoogleFonts.bebasNeue(
              fontSize: 56,
            ),
          ),
        ),

        SizedBox(height: 25),
        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Find your coffee...",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
              )
            ),
          ),
        ),
        //horizontal list of coffee
        Padding(
          padding: const EdgeInsets.only(top:25.0),
          child: Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context,index){
              return CoffeeType(
                coffeeType: coffeeType[index][0],
                isSelected: coffeeType[index][1],
                onTap: (){
                  coffeeTypeSelected(index);
                },
                );
            },
            ),
          ),
        ),
        //listview of coffee items
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
            CoffeeTile(
              coffeeImagePath: 'lib/images/milkshake.png',
              coffeeName: 'Milkshake',
              coffeePrice: '420',
            ),
            CoffeeTile(
              coffeeImagePath: 'lib/images/latte.png',
              coffeeName: 'Latte',
              coffeePrice: '250',
            ),
            CoffeeTile(
              coffeeImagePath: 'lib/images/capucino.png',
              coffeeName: 'Cappucino',
              coffeePrice: '320',
            ),
            CoffeeTile(
              coffeeImagePath: 'lib/images/oreomilkshake.png',
              coffeeName: 'Oreomilkshake',
              coffeePrice: '320',
            ),
            CoffeeTile(
              coffeeImagePath: 'lib/images/coffee.png',
              coffeeName: 'Coffee',
              coffeePrice: '140',
            ),
            CoffeeTile(
              coffeeImagePath: 'lib/images/blueberry.png',
              coffeeName: 'BlueberryShake',
              coffeePrice: '280',
            ),
          ]),
        ),
      ]),
    );
  }
}