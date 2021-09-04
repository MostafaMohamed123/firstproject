import 'package:flutter/material.dart';
import 'package:rgrg/shared/componets/componets.dart';

class challange_result extends StatefulWidget {

  @override
  _challange_resultState createState() => _challange_resultState();
}

class _challange_resultState extends State<challange_result> {
var personControl=TextEditingController();

var emialControl=TextEditingController();

var phoneControl=TextEditingController();

var passwordControl=TextEditingController();
var passwordControl2=TextEditingController();
var formkey=GlobalKey<FormState>();

bool ispassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
     appBar:AppBar(backgroundColor:Colors.white,elevation:0 ,
       leading:IconButton(onPressed:(){Navigator.pop(context);} ,icon: Icon(Icons.keyboard_arrow_left,color:Colors.black ,)) ,) ,

      body:SingleChildScrollView(
        scrollDirection : Axis.vertical,
        child:Form(
          key:formkey ,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center ,
            children: [
              SizedBox(
                height:50.0 ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:50.0,vertical:10.0   ),
                child: Text("Let\'s Get Started!",
                  style:TextStyle(
                    fontSize:30.0,
                    fontWeight:FontWeight.bold,
                  ) ,
                ),
              ) ,
              Text('create an account to Q Allure to get all features'),
              SizedBox(
                height:25.0 ,
              ),
              Container(
                width:300.0 ,
                child: defaultTextFormField(
                  controller: personControl,
                  type: TextInputType.text,
                  Validator: ( String){
                    if(String== null) {
                      return 'text must not be empty';
                    }
                    return null;
                  },
                  labelText: 'Enter name',
                  prefix: Icons.person,
                ),
              ),
              SizedBox(
                height:25.0 ,
              ),
              Container(
                width:300.0 ,
                child: defaultTextFormField(
                  controller: emialControl,
                  type: TextInputType.text,
                  Validator: ( value){
                    if(value!.isEmpty){
                      return 'emial must not be empty';
                    }
                    return null;
                  },
                  labelText: 'Enter emali',
                  prefix: Icons.email,
                ),
              ),
              SizedBox(
                height:25.0 ,
              ),
              Container(
                width:300.0 ,
                child: defaultTextFormField(
                  controller: phoneControl,
                  type: TextInputType.number,
                  Validator: ( value){
                    if(value!.isEmpty){
                      return 'phone must not be empty';
                    }
                    return null;
                  },
                  labelText: 'Enter phone',
                  prefix: Icons.phone_android,
                ),
              ),
              SizedBox(
                height:25.0 ,
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
              SizedBox(
                height:25.0 ,
              ),
              Container(
                width:300.0 ,
                child: defaultTextFormField(
                    controller: passwordControl2,
                    type: TextInputType.visiblePassword,
                    Validator: ( value){
                      if(value!.isEmpty){
                        return 'password must not be empty';
                      }
                      return null;
                    },
                    labelText: 'Enter confirm password',
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
              SizedBox(
                height:25.0 ,
              ),
              Container(
                width:200.0 ,
                child: defaultButton(
                    width:0,
                    bachground: Colors.blue,
                    onPressed: (){},
                    text: 'CREATE',
                    radius: 20.0),
              ),
              SizedBox(
                height:30.0 ,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text('Already have an account?'),
                  TextButton(onPressed:(){
                    if(formkey.currentState!.validate()){
                      print(personControl.text);
                      print(passwordControl.text);
                    }
                  }, child: Text('Login here',style:TextStyle(fontSize:15.0, ) ,))
                ],
              )
            ],
          ),
        ),
      )


    );
  }
}
