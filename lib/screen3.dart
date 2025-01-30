import 'package:flutter/material.dart';
import 'package:sangamone/screen4.dart';


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
        title: Text("Time in different cites"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Center(
                child: StreamBuilder(stream: st, builder: (context,snapshot){
                  DateTime dt1 = DateTime.now().toUtc();
                  DateTime dt2 = DateTime.now();
                  return Column(
                    children: [
                      Text("UTC - ${dt1.year}:${dt1.month}:${dt1.day}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Text("${dt1.hour}:${dt1.minute}:${dt1.second}\n",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Text("Local - ${dt2.year}:${dt2.month}:${dt2.day}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Text("${dt2.hour}:${dt2.minute}:${dt2.second}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  );
                }),
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_forward_sharp),
          onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Cites()));

      }),
    );
  }
}
