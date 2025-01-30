import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Index"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width*0.5,

            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  width:MediaQuery.sizeOf(context).width*0.5,
                    child: Text("Column1",),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.all(12),
                  width:MediaQuery.sizeOf(context).width*0.5,
                  child: Text("Screen1",),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.all(12),
                  width:MediaQuery.sizeOf(context).width*0.5,
                  child: Text("Screen2",),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.all(12),
                  width:MediaQuery.sizeOf(context).width*0.5,
                  child: Text("Screen3",),
                ),
                Divider(),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width*0.5,

            child: Column(
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  width:MediaQuery.sizeOf(context).width*0.5,
                  child: Text("Column2",),
                ),
                Divider(),
              ],
            ),
          )
        ],
      )
    );
  }
}

