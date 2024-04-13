import 'dart:math';

import 'package:flutter/material.dart';
// import 'dart:math';
import 'package:flutter_project/login_Page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First App",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: DashBoardScreen(),
    );
  }

}

class DashBoardScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }

}

class DashBoardState extends State<DashBoardScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My First DashBoard")),
        backgroundColor: Colors.purple,
      ),
      body: ContainerWidget([Colors.blue,Colors.pink,Colors.orange,Colors.greenAccent]),
      // login_info(),
    );
  }
}

class ContainerWidget extends StatelessWidget{
   ContainerWidget(this.Colors,{super.key});
   List<Color> Colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Colors,
        ),
      ),
      child: TextWidget(),
    );
  }
}


class TextWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TextWidgetState();
  }
}



class _TextWidgetState extends State<TextWidget>{

  var img = 'assets/images/dice-3.png';
  void rollDice(){
    var num = Random().nextInt(6)+1;//1 to 6
    img = 'assets/images/dice-$num.png';
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img,width: 200,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: rollDice,
                child: Text("Rolled Dice"),),
          ),
        ],
      ),
    );
  }

}