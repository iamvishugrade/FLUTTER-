import 'package:flutter/material.dart';
import 'package:routes/main.dart';
class Secondscreen extends StatefulWidget {
  static const String id = 'Secondscreen';
  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         child: Center(
           child: MaterialButton(
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, MyHomePage.id, (route) => false);
            },
            child:Icon(Icons.arrow_back),
        ),
         ),
      ),
    );
  }
}
