import 'package:flutter/material.dart';
import 'package:widget_task/vishal_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int count=0;
void less(){
  setState(() {
    if(count>0)
      count-- ;
    
  });
}
void high(){
  setState(() {
    count++;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
      ),
      
      body:Row(children: <Widget>[
          RaisedButton(child:Text("-"),onPressed:less, color: Colors.blue,),
          VishalButton(name: count.toString(),),
          RaisedButton(child:Text("+"),onPressed:high),
      ],)
    );
  }
}