import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedContainerDemo(),
    );
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container Demo'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _isBig ? 200 : 100,
          height: _isBig ? 200 : 100,
          color: _isBig ? Colors.blue : Colors.red,
          alignment: Alignment.center,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Text(
            'Tap me!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isBig = !_isBig;
          });
        },
        tooltip: 'Animate',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
