import 'package:flutter/material.dart';

class login_info extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return info_State();
  }

}

class info_State extends State<login_info>{
  var name = TextEditingController();
  var age = TextEditingController();
  var n = "";
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Login Info")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  prefixIcon: Icon(Icons.ac_unit_outlined),
                  hintText: "Enter Your Name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: age,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  prefixIcon: Icon(Icons.ac_unit_outlined),
                  hintText: "Enter Your age"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              n = name.text.toString();
              a = int.parse(age.text.toString());
              setState(() {

              });
            }, child: Text("Click")),
          ),
          Text('Your Name is: ${n} and your age is: ${a}'),
        ],
      ),
    );
  }

}