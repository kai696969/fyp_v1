import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/variables.dart';
import 'package:fyp_v1/rcdescription.dart';

class zInPageBoth extends StatelessWidget
{
  final variables = Variables();


zInPageBoth({required j ,required realZL ,  required imaginaryZL ,required realZo ,
    required imaginaryZo  ,required zlvalue , required  zovalue ,required zlvalue1 , required  zovalue1 ,
    required rctop , required rcbtm ,required rctop1 , required rcbtm1,
    required beta , required zPosition, required zIn ,   required zIn1 ,required zIntop , required zInbtm , required zIntop1 , required zInbtm1 ,
    required tanbetaz , required tanbetaz1
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("{${"Input${r'\ \,'}Impedance"}}${r'\ \,'}${r'Z_'}{in}(-${r'\ell'}) " , textStyle:  TextStyle(fontSize: 22 , color: Colors.black , fontWeight: FontWeight.bold) ,),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:  EdgeInsets.only(left: 10.0, right: 10.0 , top: 30.0),
            child: Container(
              height: 5000,
              width: 600,
              child:  Column(
                children: [
                  rcMethod12var(variables),
                  Text("" ,  style: TextStyle(fontSize: 25) , ),
                  Text(" \n Result: ${variables.zIn1.re.toStringAsFixed(3)} + ${variables.zIn1.im.toStringAsFixed(3)}j \n "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
                  zInAllinputs(variables)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




