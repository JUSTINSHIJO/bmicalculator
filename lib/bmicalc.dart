import 'package:flutter/material.dart';
class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text("BMI CALCULATOR",
            style: TextStyle(color: Colors.black, fontSize: 25),),
          backgroundColor: Colors.white60),
        body:Column(mainAxisAlignment:MainAxisAlignment.center,children: [
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: TextField(
                controller: height,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ENTER YOUR HEIGHT',
                filled: true,
                fillColor: Colors.white,
              ),),
            ),
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: TextField(
            controller: weight,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ENTER YOUR WEIGHT',
                filled: true,
                fillColor: Colors.white,
              ),),
        ),

        TextButton(onPressed:(){calculate();},child:Text("calculate",)),Text('result')
        ]),
        backgroundColor: Colors.lightBlue);


  }
}
