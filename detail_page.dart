import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/menu.dart';

class DetailPage extends StatelessWidget {
  // final Menu menu;
  final String name;
  final String image;
  final String desc;
  final int price;
  final String category;
  final double ratings;
  final int reviewer;
  final int sold;

  const DetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
    required this.category,
    required this.ratings,
    required this.reviewer,
    required this.sold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.network(image),
              SizedBox(height: 16,),
              Text(name, style: TextStyle(fontSize: 24.00),),
              SizedBox(height: 16,),
              Text(desc, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("${price}"),
              SizedBox(height: 16,),
              Text(category,),
              SizedBox(height: 16,),
              Text("${ratings}"),
              SizedBox(height: 16,),
              Text("${reviewer}"),
              SizedBox(height: 16,),
              Text("${sold}"),
            ],
          ),
        ),
      ),

    );
  }
}

