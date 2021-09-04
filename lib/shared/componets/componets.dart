import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  required double width ,
  required Color bachground,
  bool isUpperCase=true,
  required  Function() onPressed ,
  required String text,
  required double radius,

}) =>Container(
width:width ,

child: MaterialButton(

  onPressed :onPressed,
child:
    Text(isUpperCase? text.toUpperCase() : text,
  style:TextStyle(
  fontSize:20.0 ,
  color:Colors.white,

  ) ,
  ),



),
  decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(radius) ,
    color:bachground ,
  ) ,
);


Widget defaultTextFormField( {
 // required double radius,
  required TextEditingController controller,
  required TextInputType type,
 // Function()? onFieldSubmitted ,
  //Function()? onChanged ,
  required String? Function(String?) Validator,
  //required Function() Validator,
  Function()? suffixPressd,
  Function()? onTap,
  required String labelText,
  required IconData prefix,
   IconData? suffix,
  bool ispassword=false,
})=>TextFormField(
//onFieldSubmitted: onFieldSubmitted ,
//onChanged: onChanged,
validator: (String)
{
  Validator(String);
  } ,
controller:controller ,
keyboardType:type ,
decoration:InputDecoration(
labelText:labelText,
border:OutlineInputBorder(borderRadius:BorderRadius.circular(25.0) ) ,
suffixIcon:suffix !=null?IconButton(icon:Icon(suffix),onPressed:suffixPressd ):null,
prefixIcon:Icon(prefix),


) ,
  obscureText:ispassword,
  onTap:onTap,


);




