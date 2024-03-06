import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  @override
  _AnimatedOpacityDemoState createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Column(
        children: [
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0, // Change opacity based on visibility
            duration: Duration(seconds: 2),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.green,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible; // Toggle visibility
              });
            },
            child: Text(_isVisible ? 'Hide' : 'Show'), // Toggle button text
          ),
        ],
      ),
    );
  }
}
