import 'package:flutter/material.dart';

class Screen8 extends StatelessWidget {
  const Screen8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chessboard1(),
    );
  }
}

class Chessboard1 extends StatefulWidget {
  const Chessboard1({super.key});

  @override
  State<Chessboard1> createState() => _ChessboardState();
}

class _ChessboardState extends State<Chessboard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chess Board"),
      ),
      body: Container(
        child: GridView.builder(itemCount: 64,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), itemBuilder: (context,index){
          int row = index~/8;
          int column = index%8;
          return Container(
            child: Center(child: Text("$row $column")),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2),
              color: (column+row)%2==0?Colors.white:Colors.black,
            ),
          );
        }),
      ),floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chessboard1()));
    },
      child: Icon(Icons.arrow_forward_sharp),),
    );
  }
}
