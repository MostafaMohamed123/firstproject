import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int Counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Counter') ,
      ) ,
      body:Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Container(
              color:Colors.blue ,
              child: MaterialButton(onPressed:(){
               setState((
                   ) {
                 Counter--;
                 print(Counter);

               });
              },child:Text('Minus',style:TextStyle(fontSize:20.0,color:Colors.white) ,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal:20.0,
              ),
              child: Text('$Counter',
              style:TextStyle(
                fontSize:30.0,
                fontWeight:FontWeight.w900,
              ) ,
              ),
            ),
            Container(
              color:Colors.blue ,
              child: MaterialButton(onPressed:(){
               setState(() {
                 Counter++;
                 print(Counter);
               });
              },child:Text('Plus',style:TextStyle(fontSize:20.0,color:Colors.white) ,),

              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
