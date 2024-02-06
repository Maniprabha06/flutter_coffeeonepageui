// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top : 8.0,left: 25.0,bottom: 25.0),
              child: Container(
                padding: const EdgeInsets.all(11),
                width:200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black54,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(coffeeImagePath,width: 500,height: 150,fit: BoxFit.cover)

                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              coffeeName,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height:4,
                            ),
                            Text('With wiped cream',
                                style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                      //price

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('\Rs.'+ coffeePrice),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(4)
                              ),
                            child: Icon(Icons.add)),
                        ],),
                      )
                  ],
                ),
          ),
        );
  }
}