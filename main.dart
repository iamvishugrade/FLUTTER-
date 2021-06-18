import 'package:flutter/material.dart';
import 'package:routes/Secondscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute:MyHomePage.id,
      routes: {
        MyHomePage.id:(context)=>MyHomePage(),
        Secondscreen.id:(context)=>Secondscreen(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String id = 'MyHomePage';


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: MaterialButton(
            color: Colors.orangeAccent,
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, Secondscreen.id, (route) => false);
            },
            child: Text('CLICK HERE'),
          ),
        ),
      ),
     );
  }
}
