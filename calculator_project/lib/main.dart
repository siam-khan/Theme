import 'package:calculator_project/widgets/CalcuButton.dart';
import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _history="";
  String _expression="";
  void numclick(String text){
    setState(() {
      _expression += text;
    });
  }
  void allClear(String text){
    setState(() {
       _history="";
      _expression = "";
    });
  }

  void clear(String text){
    setState(() {
       
      _expression = "";
    });
  }
  void evaluate(String text){

     Parser p = Parser();
  Expression exp = p.parse(_expression);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
       _history= _expression;
      _expression = eval.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Container(
              padding: EdgeInsets.only(right: 12),
              child: Text(_history,
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87),
              ),
              alignment: Alignment(1, 1),
              
            ),
            // SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(_expression,style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Colors.white),
              ),
              alignment: Alignment(1, 1),
              
            ),
            SizedBox(height: 40,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [CalcuButton(
              text: "AC",
            
            fillColor:0xFF6C807F, 
            textColor:0xFFFFFFFF, textSize: 20, 
            callback:allClear,
            ),
            CalcuButton(
              text: "C",
             callback:clear,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            CalcuButton(
              text: "%",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF65BDAC, textSize: 20,
            ),
            CalcuButton(
              text: "/",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            
            
            
            ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [CalcuButton(
              text: "7",
             callback:numclick,
            fillColor:0xFF6C807F, 
            textColor:0xFFFFFFFF, textSize: 20,
            ),
            CalcuButton(
              text: "8",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            CalcuButton(
              text: "9",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF65BDAC, textSize: 20,
            ),
            CalcuButton(
              text: "*",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            
            
            
            ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [CalcuButton(
              text: "4",
             callback:numclick,
            fillColor:0xFF6C807F, 
            textColor:0xFFFFFFFF, textSize: 20,
            ),
            CalcuButton(
              text: "5",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            CalcuButton(
              text: "6",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF65BDAC, textSize: 20,
            ),
            CalcuButton(
              text: "-",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            
            
            
            ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [CalcuButton(
              text: "1",
             callback:numclick,
            fillColor:0xFF6C807F, 
            textColor:0xFFFFFFFF, textSize: 20,
            ),
            CalcuButton(
              text: "2",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            CalcuButton(
              text: "3",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF65BDAC, textSize: 20,
            ),
            CalcuButton(
              text: "+",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            
            
            
            ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [CalcuButton(
              text: ".",
             callback:numclick,
            fillColor:0xFF6C807F, 
            textColor:0xFFFFFFFF, textSize: 20,
            ),
            CalcuButton(
              text: "0",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            CalcuButton(
              text: "00",
             callback:numclick,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF65BDAC, textSize: 20,
            ),
            CalcuButton(
              text: "=",
             callback:evaluate,
            fillColor:0xFFFFFFFF, 
            textColor: 0xFF000000, textSize: 20,
            ),
            
            
            
            ],
            ),
            
            ] 



            
            
        ),
      ),
    );
  }
}