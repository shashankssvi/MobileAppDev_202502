import 'package:flutter/material.dart';




class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

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
