import 'package:flutter/material.dart';
import 'package:flutter_animation/detailed_page.dart';

class heroanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
      ),
      body: Container(
        child: Center(
          child:InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>detailedpage()));
            },
            child: Hero(tag: 'background'
            , child:Image.asset('assets/photos.webp',width:200,height: 200),
            ),
          )
        ),
      )
    );
  }
}
