import 'package:flutter/material.dart';


void main() {
  runApp(const Screen3());
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Datetime(),
    );
  }
}

class Datetime extends StatefulWidget {
  const Datetime({super.key});

  @override
  State<Datetime> createState() => _DatetimeState();
}

class _DatetimeState extends State<Datetime> {

  Stream st = Stream.periodic(Duration(seconds: 1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text("${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          ),
          Container(
              child: Center(
                child: StreamBuilder(stream: st, builder: (context,snapshot){
                  return Text("${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),);
                }),
              )
          )
        ],
      ),
    );
  }
}
