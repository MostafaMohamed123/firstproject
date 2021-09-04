import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rgrg/shared/componets/componets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'challange 1 _result.dart';
class challange_1 extends StatefulWidget {
  @override
  _challange_1State createState() => _challange_1State();
}

class _challange_1State extends State<challange_1> {

  var personControl=TextEditingController();

  var passwordControl=TextEditingController();

  bool ispassword=true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child: Column(
crossAxisAlignment:CrossAxisAlignment.center ,
          children: [

          Container(
          width:7000.0 ,
              height:300.0 ,
              child: Image(image:AssetImage('images/welcome.jpg',))),
            Text("Welcome back!",
            style:TextStyle(
             fontWeight:FontWeight.bold,
              fontSize:30.0,
            ) ,
            ),
            SizedBox(
              height:10.0 ,
            ),
            Text('Log in to your existant account of Q ALLure'),
            SizedBox(
              height:20.0 ,
            ),
          Container(
            width:300.0 ,
            child: defaultTextFormField(
                controller: personControl,
                type: TextInputType.text,
                Validator: ( value){
                  if(value!.isEmpty){
                    return 'text must not be empty';
                  }
                  return null;
                },
                labelText: 'Enter emali',
                prefix: Icons.person,
            ),
          ),
            SizedBox(
              height:20.0 ,
            ),
            Container(
              width:300.0 ,
              child: defaultTextFormField(
                controller: passwordControl,
                type: TextInputType.visiblePassword,
                Validator: ( value){
                  if(value!.isEmpty){
                    return 'password must not be empty';
                  }
                  return null;
                },
                labelText: 'Enter password',
                prefix: Icons.lock,
                ispassword:true,
                suffix:ispassword?Icons.visibility_off: Icons.visibility,
                suffixPressd:(){
                  setState(() {
                    ispassword=!ispassword;
                  });
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal:25,
              ),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  Text('forget',
                  style:TextStyle(
                    fontSize:20.0,
                  ) ,
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text('password',
                        style:TextStyle(
                          fontSize:20.0,
                        ) ,
                      ),),
                  Text('?',
                    style:TextStyle(
                      fontSize:20.0,
                    ) ,
                  ),
                ],
              ),

            ),
            SizedBox(
              height:20.0 ,
            ),
           Container(
             width:200.0 ,
             child: defaultButton(
                 width:0,
                 bachground: Colors.blue,
                 onPressed: (){},
                 text: 'LOG IN',
                 radius: 20.0),
           ),
            SizedBox(
              height:40.0 ,
            ),
            Text('or connect using'),
            SizedBox(
              height:20.0 ,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width:30 ,
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:Container(
                          height:50.0 ,
                          width:30.0 ,
                          decoration:BoxDecoration(borderRadius:BorderRadius.circular(20.0),
                            color:Colors.blue ,
                          ),
                          clipBehavior:Clip.antiAliasWithSaveLayer ,

                          child: InkWell(
                            onTap:(){

                            } ,

                            //borderRadius:BorderRadius.circular(20.0),

                            child: Row(
                              children: [
                                Icon(Icons.facebook,size:30 ,color:Colors.white ,),
                                SizedBox(
                                  width:5.0 ,
                                ),
                                Text('Facebook',
                                style:TextStyle(
                                  fontSize:25.0,
                                  color:Colors.white,
                                ) ,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      /*
                      defaultButton(
                          width:0,
                          bachground: Colors.blue,
                          onPressed: (){},
                          text: 'Facebook',
                          radius: 15.0),*/
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width:30 ,
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:Container(
                            height:50.0 ,
                            width:30.0 ,
                            decoration:BoxDecoration(borderRadius:BorderRadius.circular(20.0),
                              color:Colors.redAccent ,
                            ),
                            clipBehavior:Clip.antiAliasWithSaveLayer ,

                            child: InkWell(
                              onTap:(){

                              } ,

                              //borderRadius:BorderRadius.circular(20.0),

                              child: Row(
                                children: [
                                  Icon(FontAwesomeIcons.google,size:30 ,color:Colors.white ,),
                                  SizedBox(
                                    width:5.0 ,
                                  ),
                                  Text('Google',
                                    style:TextStyle(
                                      fontSize:25.0,
                                      color:Colors.white,
                                    ) ,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      /*
                      defaultButton(
                          width:0,
                          bachground: Colors.blue,
                          onPressed: (){},
                          text: 'Facebook',
                          radius: 15.0),*/
                    ),
                    /*
                    child: defaultButton(
                        width:0,
                        bachground: Colors.redAccent,
                        onPressed: (){},
                        text: 'Google',
                        radius: 15.0),*/
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text('don\'t have an account ?'),
                TextButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>challange_result()));

                  },
                    child: Text('Sign up',style:TextStyle(fontSize:17.0, ) ,))
              ],
            )
          ],


        ),
      ) ,
    );
  }
}
