import 'package:flutter/material.dart';
import 'package:sangamone/screen7.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Colorgen(),
    );
  }
}

class Colorgen extends StatefulWidget {
  const Colorgen({super.key});

  @override
  State<Colorgen> createState() => _ColorgenState();
}

class _ColorgenState extends State<Colorgen> {
  
  TextEditingController r = TextEditingController();
  TextEditingController g = TextEditingController();
  TextEditingController b = TextEditingController();

  int red = 0;
  int blue = 0;
  int green =0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Generator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: r,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Red"
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: g,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Blue"
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: b,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "green"
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              red=int.parse(r.text);
              green=int.parse(g.text);
              blue=int.parse(b.text);
            });

          }, child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20),),
            style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),),
          Container(
            margin: EdgeInsets.all(20),
            width: MediaQuery.sizeOf(context).width,
            height: 200,
            color: Color.fromRGBO(red,green,blue, 1),)
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Chessboard()));
      },
        child: Icon(Icons.arrow_forward_sharp),),
    );
  }
}

