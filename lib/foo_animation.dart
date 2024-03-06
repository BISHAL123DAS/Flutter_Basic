import 'package:flutter/material.dart';

class fooanimation extends StatefulWidget {
  @override
  State<fooanimation> createState() => _fooanimationState();
}

class _fooanimationState extends State<fooanimation> {
  var _width = 200.0;

  var _height = 100.0;
  bool flag = true;
  Color bgcolor=Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("foo animtion-by bishal das"),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: _width,
                height: _height,
                color: bgcolor,
              ),
              ElevatedButton(
                onPressed: () {
                  if (flag) {
                    setState(() {
                      _width = 100.0;
                      _height = 200.0;
                      flag=false;
                      bgcolor=Colors.purple;
                    });
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    flag=true;
                    bgcolor=Colors.green;
                  }
                },
                child: Text("animated buttons"),
              )
            ],
          ),
        ));
  }
}
