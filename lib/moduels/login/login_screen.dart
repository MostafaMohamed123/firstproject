import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rgrg/shared/componets/componets.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  late bool ispossword=true,


  Widget; build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu), title: Text("Face Book",

        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          backgroundColor: Colors.blue,

        ),
      )
        ,),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  /*TextFormField(
                    onFieldSubmitted:(String value){
                      print(value);
                    } ,
                    onChanged:(String value){
                      print(value);
                    } ,
                    validator:(value){
                      if(value!.isEmpty){
                        return 'emil address must not be empty';
                      }
                      return null;
                    } ,
                    controller:emailcontroller ,
                    keyboardType:TextInputType.emailAddress ,
                    decoration:InputDecoration(
                      labelText:'Emai Address',
                      border:OutlineInputBorder(),
                      prefixIcon:Icon(Icons.email),
                    ) ,
                  ),*/

                  defaultTextFormField(
                    Validator:(String){
                      if(String != null){
                        return null;
                      }
                      return 'email is not must be empty';
                    } ,

                    controller: emailcontroller,
                    type: TextInputType.emailAddress,
                    labelText: 'Email',
                    prefix: Icons.email,
                    //validator: (String value) {

                      //if (value.isEmpty) {
                        //return 'emil address must not be empty';
                      //}
                      //return null;
                    //},



                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  /*TextFormField(
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty';
                      }

                      return null;
                    },
                    controller: passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),*/
                  defaultTextFormField(
                    Validator:(String){
                      if(String != null){
                        return null;
                      }
                      else{
                      return 'password is shorteen';}

                    } ,

                      controller: passwordcontroller,
                      type: TextInputType.visiblePassword,
                      labelText: 'password',
                      prefix: Icons.lock,
                      //validator: (String value) {

                      //if (value.isEmpty) {
                      //return 'emil address must not be empty';
                      //}
                      //return null;
                      //},
                      suffix:ispossword?Icons.visibility_off:Icons.visibility ,
                      ispassword:ispossword,
                      suffixPressd:(){
                        setState(() {
                          ispossword=!ispossword;
                        });
                      }


                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  /*Container(
                    width:double.infinity ,
                    color:Colors.blue ,
                    child: MaterialButton(onPressed:(){
                      print(emailcontroller.text);
                      print(passwordcontroller.text);
                    },
                      child:Text('LOGIN',
                      style:TextStyle(
                        fontSize:20.0 ,
                        color:Colors.white,
                      ) ,
                      ) ,
                    ),
                  ),*/
                  defaultButton(
                    text: 'login',
                    bachground: Colors.blue,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      }
                    },
                    width: double.infinity,
                    radius: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(onPressed: () {}, child: Text('Register Now'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


