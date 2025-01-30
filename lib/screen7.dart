import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chessboard(),
    );
  }
}

class Chessboard extends StatefulWidget {
  const Chessboard({super.key});

  @override
  State<Chessboard> createState() => _ChessboardState();
}

class _ChessboardState extends State<Chessboard> {
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
              border: Border.all(color: Colors.black,width: 2)
            ),
          );
        }),
      ),
    );
  }
}
