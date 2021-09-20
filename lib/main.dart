import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => homePage();

class homePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCustomWidget(),
    );
  }
}



class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 50),
          SlimyCard(
            topCardWidget: topCardWidget(),
            bottomCardWidget: bottomCardWidget(),
          ),
        ],
      ),
    );
  }

  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget() {
    return Text(
      'customize as you wish.',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(.85),
      ),
    );
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget() {
    return Text(
      'customize as you wish.',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(.85),
      ),
    );
  }
}