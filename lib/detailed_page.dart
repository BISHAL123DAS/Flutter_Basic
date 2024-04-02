import 'package:flutter/material.dart';

class detailedpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detailed page animation"),
      ),
      body: Container(
          child: Row(
        children: [
          Hero(
            tag: 'background',
            child: Image.asset('assets/photos.webp', width: 500, height: 400),
          ),
        ],
      )),
    );
  }
}
