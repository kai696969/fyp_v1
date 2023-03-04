import 'package:flutter/material.dart';
import 'package:fyp_v1/rcdescription.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:fyp_v1/variables.dart';


class rcBothinput extends StatelessWidget {
  final variables = Variables();

  rcBothinput({
    required j, required imaginaryZL, required realZL, required realZo, required imaginaryZo, required rcvalue1,
    required zovalue, required zlvalue, required zovalue1, required zlvalue1, required rcbtm, required rctop,
    required rcbtm1, required rctop1, required beta, required zPosition, required SWR, required rcUsingSwr1, required thetaRc,
    required thetaRo, required swrValue, required thetaRo1, required swrValue1, required thetaRo2, required j2betaZpos,
    required j2betaZpos1, required rcAtz, required rcAtz1,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Math.tex("{${"Reflection${r'\ \,'}Coefficient"}}${r'\ \,'}${r'\Gamma_L '} " , textStyle:  TextStyle(fontSize: 23 , color: Colors.black , fontWeight: FontWeight.bold) ,),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:  EdgeInsets.only(left: 30.0, right: 30.0 , top: 30.0),
            child: Container(
              height: 5000,
              width: 500,
              child: Column(
                children: [
                  rcMethod12var(variables),
                  Text(" \n Result:  ${variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j \n  "  , style: TextStyle(color: Colors.black , fontSize: 25, ) ),
              ExpansionTile(
                title: Text('More' , style: TextStyle(fontSize: 25),),
                backgroundColor: Colors.grey[200],
                collapsedBackgroundColor: Colors.yellow[300],
                  children:[
                    ListTile( title: Math.tex("${r'\Gamma_L = \frac{Z_L- Z_o}{Z_L+ Z_o}'}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
                    ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'Z_L - Z_o= '}${variables.rctop1.re.toStringAsFixed(3)} - ${variables.rctop1.im.toStringAsFixed(3)}j " , textStyle:  TextStyle(fontSize: 25)),),
                    ListTile( title: Math.tex("${r'Z_L + Z_o= '}${variables.rcbtm1.re.toStringAsFixed(3)} + ${variables.rcbtm1.im.toStringAsFixed(3)}j " , textStyle:  TextStyle(fontSize: 25)),),
                    ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Gamma_L = \frac{'}${variables.rctop1.re.toStringAsFixed(3)} - ${variables.rctop1.im.toStringAsFixed(3)}j${r'}{'}${variables.rcbtm1.re.toStringAsFixed(3)} + ${variables.rcbtm1.im.toStringAsFixed(3)}j${r'}'}", textStyle: TextStyle(fontSize: 25) ,)),
                    ListTile( title: Math.tex("", textStyle: TextStyle(fontSize: 25),),),
                    ListTile( title: Math.tex("${r'\quad \;\;=\;'}${r'\frac'}{${variables.rctop1.module.toStringAsFixed(3)}${r'\angle'}${variables.rctop1.argument.toStringAsFixed(3)}rad}{${variables.rcbtm1.module.toStringAsFixed(3)}${r'\angle'}${variables.rcbtm1.argument.toStringAsFixed(3)}rad}", textStyle: TextStyle(fontSize: 25),),),
                    ListTile( title: Math.tex("", textStyle: TextStyle(fontSize: 25),),),
                    ListTile( title: Math.tex("${r'\quad \;\;=\;'}${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${variables.rcvalue1.argument.toStringAsFixed(3)}  " , textStyle:  TextStyle(fontSize: 25)),),
                    ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
                        children: [
                          recttopolar(variables.rctop1.re , variables.rctop1.im),
                          recttopolar(variables.rcbtm1.re ,variables.rcbtm1.im),
                        ]
                    ),
                    ListTile(title: Text.rich(TextSpan(text: 'Step 3:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                    ListTile( title: Math.tex("${r'\Gamma_L  \;='} ${variables.rcvalue1.module.toStringAsFixed(3)}${r'\angle'}${variables.rcvalue1.argument.toStringAsFixed(3)}  " , textStyle:  TextStyle(fontSize: 25)),),
                    ListTile( title: Math.tex(" ${r'\quad \;\;\;='} ${ variables.rcvalue1.re.toStringAsFixed(3)} + ${variables.rcvalue1.im.toStringAsFixed(3)}j", textStyle: TextStyle(fontSize: 25) ,)),
                    ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
                        children: [
                          polartorect(variables.rcvalue1.module , variables.rcvalue1.argument )
                        ]
                    ),
                  ],
              ),




                  ExpansionTile(
                      title: Text('More' , style: TextStyle(fontSize: 25),),
                      backgroundColor: Colors.grey[200],
                      collapsedBackgroundColor: Colors.pink[300],
                    children:
                    [
                      ListTile( title: Math.tex("{${"|"}}${r'\Gamma_L'}{${"|"}}${r'\angle'}${r' \theta_o '} = ${r'\frac{SWR-1}{SWR+1}'}${r'\angle'}${r' \theta_o '}", textStyle: TextStyle(fontSize: 25 , color: Colors.deepPurple , fontWeight: FontWeight.bold) ,  )),
                      ListTile(title: Text.rich(TextSpan(text: 'Step 1:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)),
                      ListTile( title: Math.tex("{${"SWR - 1 = "}}${r'\ \,'}${variables.SWR - 1} " , textStyle:  TextStyle(fontSize: 25)),),
                      ListTile( title: Math.tex("{${"SWR + 1 = "}}${r'\ \,'}${variables.SWR + 1} " , textStyle:  TextStyle(fontSize: 25)),),
                      ListTile(title: Text.rich(TextSpan(text: 'Step 2:   ', style: TextStyle(fontSize: 25 ,  decoration: TextDecoration.underline,),),)) ,
                      ListTile( title: Math.tex("{${"|"}}${r'\Gamma_L'}{${"|"}}${r'\angle'}${r' \theta_o '} = |${r'\frac'}{${variables.SWR-1}}{${variables.SWR+1}}|${r'\angle'}${variables.thetaRo2}rad ", textStyle: TextStyle(fontSize: 25 ,) ,  )),
                      ListTile( title: Math.tex("${r'\qquad \qquad = '}${variables.swrValue1.abs().toStringAsFixed(3)}${r'\angle'}${variables.thetaRo2}rad", textStyle: TextStyle(fontSize: 25 ,) ,  )),
                      ExpansionTile(title: Text("Details",style: TextStyle(fontSize: 20 , color: Colors.blue)),
                          children: [ListTile( title: Math.tex("${r' \theta_o '} = ${r' \theta_ '}${r' \Gamma '}{-2}${r'\beta'}{z} ", textStyle: TextStyle(fontSize: 25 ,) , )),
                            ListTile( title: Math.tex("{=}${variables.thetaRc - 2*variables.beta*variables.zPosition}rad", textStyle: TextStyle(fontSize: 25 ,) ,  )),
                            polartorect(variables.swrValue1.abs(), variables.thetaRo2 )
                          ]
                      ),
                    ],

                  ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }



}







