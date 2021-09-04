import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rgrg/moduels/bmi_result/Bmi_ResultScreen.dart';

class Bmi_screen extends StatefulWidget {

  @override
  _Bmi_screenState createState() => _Bmi_screenState();
}

class _Bmi_screenState extends State<Bmi_screen> {
  bool isMale=true;
  double height=120.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Center(
          child: Text(
            'Bmi Calculater',
          ),
        ) ,
      ) ,
      body:Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child:GestureDetector(
                      onTap:(){
                        setState(() {
                          isMale=true;
                        });
                      } ,
                      child: Container(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children: [
                           Image(image:AssetImage('images/male.png'),
                           height:90.0 ,
                             width:90.0 ,
                           ),
                            SizedBox(
                              height:15.0 ,
                            ),
                            Text('MALE',
                            style:TextStyle(
                              fontSize:25.0,
                              fontWeight:FontWeight.bold,
                            ) ,
                            )
                          ],
                        ),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0),
                          color:isMale? Colors.blue:Colors.grey[350] ,
                        ) ,
                      ),
                    ),
                  ),
                  SizedBox(
                    width:20.0 ,
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap:(){
                        setState(() {
                          isMale=false;
                        });
                      } ,
                      child: Container(
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children: [
                            Image(image:AssetImage('images/female.png'),
                              height:90.0 ,
                              width:90.0 ,
                            ),
                            SizedBox(
                              height:15.0 ,
                            ),
                            Text('FEMALE',
                              style:TextStyle(
                                fontSize:25.0,
                                fontWeight:FontWeight.bold,
                              ) ,
                            )
                          ],
                        ),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0),
                          color:!isMale? Colors.blue:Colors.grey[350] ,
                        ) ,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal:20.0
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text('HEIGHT',
                      style:TextStyle(
                        fontSize:25.0,
                        fontWeight:FontWeight.bold,
                      ) ,
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.baseline ,
                      textBaseline:TextBaseline.alphabetic ,
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Text('${height.round()}',
                          style:TextStyle(
                            fontSize:40.0,
                            fontWeight:FontWeight.w900,
                          ) ,
                        ),
                        SizedBox(
                          width:5.0 ,
                        ),
                        Text('CM',
                          style:TextStyle(
                            fontSize:25.0,
                            fontWeight:FontWeight.bold,
                          ) ,
                        ),
                      ],
                    ),
                    Slider(value:height,
                        max:220.0,
                        min:80.0,
                        onChanged:(value)
                        {setState(() {
                          height=value;
                        });})
                  ],
                ),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color:Colors.grey[350],
                ) ,
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center  ,
                        children: [
                          Text('WEIGHT',
                            style:TextStyle(
                              fontSize:25.0,
                              fontWeight:FontWeight.bold,
                            ) ,
                          ),
                          Text('${weight}',
                            style:TextStyle(
                              fontSize:40.0,
                              fontWeight:FontWeight.w900,
                            ) ,
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center  ,
                            children: [
                              FloatingActionButton(onPressed:(){setState(() {
                                weight--;
                              });;},
                                heroTag:'weight-' ,
                                child:Icon(Icons.remove) ,
                                mini:true ,
                              ),
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  weight++;
                                });
                              },
                                heroTag:'weight+' ,
                                child:Icon(Icons.add) ,
                                mini:true ,
                              ),
                            ],
                          )

                        ],
                      ),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0),
                        color:Colors.grey[350],
                      ) ,
                    ),
                  ),
                  SizedBox(
                    width:10.0 ,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center  ,
                        children: [
                          Text('AGE',
                            style:TextStyle(
                              fontSize:25.0,
                              fontWeight:FontWeight.bold,
                            ) ,
                          ),
                          Text('${age}',
                            style:TextStyle(
                              fontSize:40.0,
                              fontWeight:FontWeight.w900,
                            ) ,
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed:(){setState(() {
                                age--;
                              });},
                                heroTag:'age-' ,
                                child:Icon(Icons.remove) ,
                                mini:true ,
                              ),
                              FloatingActionButton(onPressed:(){setState(() {
                                age++;
                              });},
                                heroTag:'age+' ,
                                child:Icon(Icons.add) ,
                                mini:true ,
                              ),
                            ],
                          )

                        ],
                      ),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0),
                        color:Colors.grey[350],
                      ) ,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width:double.infinity ,
            color:Colors.blue ,
            child: MaterialButton(onPressed:(){
               double result = weight /pow(height /100, 2);
                print(result.round());
                Navigator.push(context, MaterialPageRoute(builder:
                (context)=>Bmi_ResultScreen(
                  age:age ,
                  isMale:isMale,
                  Result:result.round() ,
                )
                ));
            },
                height:50.0 ,
            child:Text('CALCULATE',
            style:TextStyle(
              color:Colors.white
            ) ,
            )
            ),
          )
        ],
      ) ,
    );
  }
}
