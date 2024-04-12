import 'package:flutter/material.dart';
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
      body: login_info(),
    );
  }
}
