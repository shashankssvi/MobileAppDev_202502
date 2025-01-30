import 'package:flutter/material.dart';
import 'package:sangamone/screen5.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cites(),
    );
  }
}

class Cites extends StatefulWidget {
  const Cites({super.key});

  @override
  State<Cites> createState() => _CitesState();
}

class _CitesState extends State<Cites> {

  List<String> list1 = ["Los Angeles","New York","London","Dubai","Bamgalore","Singapore","Tokyo","Sydney"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cites"),
      ),
      body: StreamBuilder(
        stream: Stream.periodic(Duration(seconds: 1)),
        builder: (context, snapshot) {
          DateTime city1 = DateTime.now().toUtc().subtract(Duration(hours: 8));
          DateTime city2 = DateTime.now().toUtc().subtract(Duration(hours: 5));
          DateTime city3 = DateTime.now().toUtc().subtract(Duration(hours: 0));
          DateTime city4 = DateTime.now().toUtc().add(Duration(hours: 4));
          DateTime city5 = DateTime.now().toUtc().add(Duration(hours: 5,minutes: 30));
          DateTime city6 = DateTime.now().toUtc().add(Duration(hours: 7,minutes: 30));
          DateTime city7 = DateTime.now().toUtc().add(Duration(hours: 8,minutes: 30));
          DateTime city8 = DateTime.now().toUtc().add(Duration(hours: 10,minutes: 30));
          List<dynamic> list2 = [city1,city2,city3,city4,city5,city6,city7,city8];
          return ListView.builder(shrinkWrap: true,itemCount: list1.length,itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text("${list1[index]}",style: TextStyle(fontSize: 24),),
                subtitle: Text("${list2[index]}",style: TextStyle(fontSize: 24),),
              ),
            );
          });
        }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Emicalculator()));
      },
      child: Icon(Icons.arrow_forward_sharp),),
    );
  }
}
