import 'dart:core';

import 'package:flutter/material.dart';


// listscrollview have an problem of listviewbuilder...its dosent provide any listviewbuilder...
//but its provide the matching functaionnality in our programe---

class listscrollview extends StatefulWidget {
  @override
  State<listscrollview> createState() => _listscrollviewState();
}

class _listscrollviewState extends State<listscrollview> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3d list"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex
              .map((value) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child:Center(
                        child: Text('$value')
                        ),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
