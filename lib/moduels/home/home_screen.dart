

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(appBar:AppBar(leading:Icon(Icons.menu), title:Text('First App') ,actions: [IconButton(onPressed: (){print('hello world');},
    icon: Icon(Icons.notification_add)),IconButton(onPressed: search, icon:Icon(Icons.search), )],backgroundColor:Colors.teal,),
body:Column(
  children: [
    Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(20.0),
        ) ,
        clipBehavior:Clip.antiAliasWithSaveLayer ,
        child: Stack(
          alignment:Alignment.bottomCenter ,
          children:[ Image(
              image:NetworkImage(
                'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/123359421_2494440350865100_2872472318511240452_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=P8F7XlfN3uoAX9tPs4x&tn=iX5gf5KV5ld04skN&_nc_ht=scontent.fcai20-6.fna&oh=405834f62a01a1a77319c9d26ee19f49&oe=612F8B51',
   ),
height:200.0 ,
            width:200.0 ,
            fit:BoxFit.cover ,

),
            Container(
              width:200.0 ,
              color:Colors.black.withOpacity(0.5) ,
              padding:EdgeInsetsDirectional.only(
                top:5.0,
                bottom:5.0,
              ) ,

              child: Text(
                'SINGARY',
                style:TextStyle(
                  fontSize:30.0,
                  color:Colors.white,
                              ) ,
                textAlign:TextAlign.center ,
              ),
            ),
        ],

        ),
      ),
    ),
    ],
)
);

  }


}


void search(){
  print('Search Clicked');
}