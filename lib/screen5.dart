import 'package:flutter/material.dart';
import 'package:sangamone/screen6.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Emicalculator(),
    );
  }
}

class Emicalculator extends StatefulWidget {
  const Emicalculator({super.key});

  @override
  State<Emicalculator> createState() => _EmicalculatorState();
}

class _EmicalculatorState extends State<Emicalculator> {


  @override
  void initState() {

    super.initState();
  }

  TextEditingController principal = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController time = TextEditingController();

  emicalculator(principal,rate,time){
    int p = int.parse(principal);
    int r = int.parse(rate);
    int t = int.parse(time);
    double si = (p*r*t)/100;
    double amt = p+si;
    double emi = amt/(t*12);
    return emi;
  }

  double emi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EMI Calculator"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: principal,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Principal",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: rate,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Rate",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: time,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Time",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                emi=emicalculator(principal.text, rate.text, time.text);
              });

            }, child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20),),
            style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),),
            Text("EMI is:- $emi",style: TextStyle(fontSize: 30),),
          ],
        ),
      ),floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Colorgen()));
    },
      child: Icon(Icons.arrow_forward_sharp),),

    );
  }
}
