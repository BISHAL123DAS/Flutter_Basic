import 'dart:async';

import 'package:flutter/material.dart';

class CrossFadeAnimatio extends StatefulWidget {
  @override
  State<CrossFadeAnimatio> createState() => _CrossFadeAnimatioState();
}

class _CrossFadeAnimatioState extends State<CrossFadeAnimatio> {
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 4), () {
    //   reload();
    // });
  }

  void reload() {
    setState(() {
      if(isFirst){
        // isFirst= !isFirst;
        isFirst=false;
      }
      else{
        // isFirst = isFirst;
        isFirst=true;
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crossfade Animation"),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                height: 250,
                width: 300,
                color: Colors.black,
              ),
              secondChild:
                  Image.asset('assets/bishal.jpg', width: 300, height: 250),
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            ElevatedButton(
                onPressed: () {
                  Timer(Duration(seconds: 2), () {
                    reload();
                  });
                },
                child: Text("show"))
          ],
        ),
      ),
    );
  }
}
