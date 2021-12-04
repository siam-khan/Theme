import 'package:flutter/material.dart';

class CalcuButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
    
  const CalcuButton({ Key ? key, 
  required this.text, 
  required this.fillColor,
  required this.textColor,
   required this.textSize,
   required this.callback,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton (
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),),
          child: Text(
            text, 
            style:TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.bold),
              ),
          onPressed: (){
            callback(text);
          },
          // ignore: unnecessary_null_comparison
          color: fillColor != null ? Color(fillColor):null,
          // textColor: Color(textColor),
          ),
      ),
    );
  }
}