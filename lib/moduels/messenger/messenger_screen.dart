import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messenger_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      appBar:AppBar(
        elevation:0.0 ,
        backgroundColor:Colors.white ,
        leading:
        CircleAvatar(
          radius:20.0 ,
        backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/123359421_2494440350865100_2872472318511240452_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=P8F7XlfN3uoAX9tPs4x&tn=iX5gf5KV5ld04skN&_nc_ht=scontent.fcai20-6.fna&oh=405834f62a01a1a77319c9d26ee19f49&oe=612F8B51') ,),
     title:Text('Chats',
     style:TextStyle(
       color:Colors.black,
       fontSize:30.0,

     ) ,
     ) ,
       actions: [
         CircleAvatar(
          radius:15.0,
             backgroundColor:Colors.white
          ,child: IconButton(onPressed: (){},icon:Icon(Icons.camera_alt))),
         CircleAvatar(
             radius:15.0,
             backgroundColor:Colors.white
             ,child: IconButton(onPressed: (){},icon:Icon(Icons.edit))),

       ],
      ) ,

      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child:SingleChildScrollView(
          scrollDirection : Axis.vertical,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              SizedBox(
                height:10.0 ,
              ),
              Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10.0),
                ) ,
                //clipBehavior:Clip.antiAliasWithSaveLayer ,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText:'Search',
                    border:OutlineInputBorder(),
                    prefixIcon:Icon(Icons.search),

                  ),
                ),
              ),
              SizedBox(
                height:10.0 ,
              ),
              /*SingleChildScrollView(
                scrollDirection : Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width:60.0 ,
                      child: Column(

                        children: [
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            height:10.0 ,
                          ),
                          Text('Walid Mohamed',
                          style:TextStyle(
                            fontSize:20,
                          ) ,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:10.0 ,
                    ),
                    Container(
                      width:60.0 ,
                      child: Column(

                        children: [
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            height:10.0 ,
                          ),
                          Text('Walid Mohamed',
                            style:TextStyle(
                              fontSize:20,
                            ) ,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:10.0 ,
                    ),
                    Container(
                      width:60.0 ,
                      child: Column(

                        children: [
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            height:10.0 ,
                          ),
                          Text('Walid Mohamed',
                            style:TextStyle(
                              fontSize:20,
                            ) ,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:10.0 ,
                    ),
                    Container(
                      width:60.0 ,
                      child: Column(

                        children: [
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            height:10.0 ,
                          ),
                          Text('Walid Mohamed',
                            style:TextStyle(
                              fontSize:20,
                            ) ,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:10.0 ,
                    ),
                    Container(
                      width:60.0 ,
                      child: Column(

                        children: [
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            height:10.0 ,
                          ),
                          Text('Walid Mohamed',
                            style:TextStyle(
                              fontSize:20,
                            ) ,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:10.0 ,
                    ),
                    Container(
                      width:60.0 ,
                      child: Column(

                        children: [
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            height:10.0 ,
                          ),
                          Text('Walid Mohamed',
                            style:TextStyle(
                              fontSize:20,
                            ) ,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),*/
              Container(
                height:150.0 ,
                child: ListView.separated(
                  //shrinkWrap:true ,
                  scrollDirection:Axis.horizontal ,
                  itemBuilder:(context,index){
                  return buildStoryItem();
                },
                  separatorBuilder:(context,index){
                    return SizedBox(
                      width:20.0 ,
                    );
                  },
                itemCount: 8,
                ),
              ),
              SizedBox(
                height:20.0 ,
              ),
              Container(
                height:500 ,
                child: ListView.separated(
                  physics:NeverScrollableScrollPhysics() ,
                  shrinkWrap:true ,
                  scrollDirection:Axis.vertical ,
                  itemBuilder:(context,index){
                  return buildChatItem();
                },
                  separatorBuilder:(context,index){
                    return SizedBox(
                      height:20.0 ,
                    );
                  } ,
                  itemCount:8 ,
                ),
              )

              /* Expanded(
                child: SingleChildScrollView(
                  scrollDirection : Axis.vertical,
                   child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                maxLines:1 ,
                                overflow:TextOverflow.ellipsis ,
                                style:TextStyle(
                                  fontSize:20.0,
                                  fontWeight:FontWeight.bold,
                                ) ,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                            maxLines:2 ,
                                            overflow:TextOverflow.ellipsis ,
                                            style:TextStyle(
                                              fontSize:20.0,
                                            ) ,
                                          ),
                                        ),
                                        SizedBox(
                                          width:10.0 ,
                                        ),
                                        CircleAvatar(
                                          radius:5.0 ,
                                          backgroundColor:Colors.black ,
                                        ),
                                        SizedBox(
                                          width:10.0 ,
                                        ),
                                        Text('02:00 pm',
                                          maxLines:1 ,
                                          overflow:TextOverflow.ellipsis ,
                                          style:TextStyle(
                                            fontSize:20.0,
                                          ) ,
                                        ),
                                      ],
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                  maxLines:1 ,
                                  overflow:TextOverflow.ellipsis ,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ) ,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                        maxLines:2 ,
                                        overflow:TextOverflow.ellipsis ,
                                        style:TextStyle(
                                          fontSize:20.0,
                                        ) ,
                                      ),
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    CircleAvatar(
                                      radius:5.0 ,
                                      backgroundColor:Colors.black ,
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    Text('02:00 pm',
                                      maxLines:1 ,
                                      overflow:TextOverflow.ellipsis ,
                                      style:TextStyle(
                                        fontSize:20.0,
                                      ) ,
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                  maxLines:1 ,
                                  overflow:TextOverflow.ellipsis ,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ) ,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                        maxLines:2 ,
                                        overflow:TextOverflow.ellipsis ,
                                        style:TextStyle(
                                          fontSize:20.0,
                                        ) ,
                                      ),
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    CircleAvatar(
                                      radius:5.0 ,
                                      backgroundColor:Colors.black ,
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    Text('02:00 pm',
                                      maxLines:1 ,
                                      overflow:TextOverflow.ellipsis ,
                                      style:TextStyle(
                                        fontSize:20.0,
                                      ) ,
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                  maxLines:1 ,
                                  overflow:TextOverflow.ellipsis ,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ) ,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                        maxLines:2 ,
                                        overflow:TextOverflow.ellipsis ,
                                        style:TextStyle(
                                          fontSize:20.0,
                                        ) ,
                                      ),
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    CircleAvatar(
                                      radius:5.0 ,
                                      backgroundColor:Colors.black ,
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    Text('02:00 pm',
                                      maxLines:1 ,
                                      overflow:TextOverflow.ellipsis ,
                                      style:TextStyle(
                                        fontSize:20.0,
                                      ) ,
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                  maxLines:1 ,
                                  overflow:TextOverflow.ellipsis ,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ) ,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                        maxLines:2 ,
                                        overflow:TextOverflow.ellipsis ,
                                        style:TextStyle(
                                          fontSize:20.0,
                                        ) ,
                                      ),
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    CircleAvatar(
                                      radius:5.0 ,
                                      backgroundColor:Colors.black ,
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    Text('02:00 pm',
                                      maxLines:1 ,
                                      overflow:TextOverflow.ellipsis ,
                                      style:TextStyle(
                                        fontSize:20.0,
                                      ) ,
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                  maxLines:1 ,
                                  overflow:TextOverflow.ellipsis ,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ) ,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                        maxLines:2 ,
                                        overflow:TextOverflow.ellipsis ,
                                        style:TextStyle(
                                          fontSize:20.0,
                                        ) ,
                                      ),
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    CircleAvatar(
                                      radius:5.0 ,
                                      backgroundColor:Colors.black ,
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    Text('02:00 pm',
                                      maxLines:1 ,
                                      overflow:TextOverflow.ellipsis ,
                                      style:TextStyle(
                                        fontSize:20.0,
                                      ) ,
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                  maxLines:1 ,
                                  overflow:TextOverflow.ellipsis ,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ) ,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                        maxLines:2 ,
                                        overflow:TextOverflow.ellipsis ,
                                        style:TextStyle(
                                          fontSize:20.0,
                                        ) ,
                                      ),
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    CircleAvatar(
                                      radius:5.0 ,
                                      backgroundColor:Colors.black ,
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    Text('02:00 pm',
                                      maxLines:1 ,
                                      overflow:TextOverflow.ellipsis ,
                                      style:TextStyle(
                                        fontSize:20.0,
                                      ) ,
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height:10.0 ,
                          ),
                          Stack(
                            alignment:AlignmentDirectional.bottomEnd ,
                            children: [
                              CircleAvatar(
                                radius:30.0 ,
                                backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
                              ),
                              CircleAvatar(

                                radius:8.0 ,
                                backgroundColor:Colors.white ,
                              ),
                              CircleAvatar(

                                radius:7.0 ,
                                backgroundColor:Colors.green ,
                              ),
                            ],
                          ),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text('Walid Mohamed ',
                                  maxLines:1 ,
                                  overflow:TextOverflow.ellipsis ,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    fontWeight:FontWeight.bold,
                                  ) ,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                                        maxLines:2 ,
                                        overflow:TextOverflow.ellipsis ,
                                        style:TextStyle(
                                          fontSize:20.0,
                                        ) ,
                                      ),
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    CircleAvatar(
                                      radius:5.0 ,
                                      backgroundColor:Colors.black ,
                                    ),
                                    SizedBox(
                                      width:10.0 ,
                                    ),
                                    Text('02:00 pm',
                                      maxLines:1 ,
                                      overflow:TextOverflow.ellipsis ,
                                      style:TextStyle(
                                        fontSize:20.0,
                                      ) ,
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:20.0 ,
                      ),
                    ],
                ),
                 ),
              ),*/
            ],


          ),
        ),
      ) ,

    );
  }
}


Widget buildChatItem(){
  return  Row(
    children: [
      SizedBox(
        height:10.0 ,
      ),
      Stack(
        alignment:AlignmentDirectional.bottomEnd ,
        children: [
          CircleAvatar(
            radius:30.0 ,
            backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
          ),
          CircleAvatar(

            radius:8.0 ,
            backgroundColor:Colors.white ,
          ),
          CircleAvatar(

            radius:7.0 ,
            backgroundColor:Colors.green ,
          ),
        ],
      ),
      SizedBox(
        width:10.0 ,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text('Walid Mohamed ',
              maxLines:1 ,
              overflow:TextOverflow.ellipsis ,
              style:TextStyle(
                fontSize:20.0,
                fontWeight:FontWeight.bold,
              ) ,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text('hello my name is Walid Mohamed,I am software Devoloper ',
                        maxLines:2 ,
                        overflow:TextOverflow.ellipsis ,
                        style:TextStyle(
                          fontSize:20.0,
                        ) ,
                      ),
                    ),
                    SizedBox(
                      width:10.0 ,
                    ),
                    CircleAvatar(
                      radius:5.0 ,
                      backgroundColor:Colors.black ,
                    ),
                    SizedBox(
                      width:10.0 ,
                    ),
                    Text('02:00 pm',
                      maxLines:1 ,
                      overflow:TextOverflow.ellipsis ,
                      style:TextStyle(
                        fontSize:20.0,
                      ) ,
                    ),
                  ],
                ),
              ],
            )

          ],
        ),
      ),
    ],
  );
}
Widget buildStoryItem(){
  return Container(
    width:60.0 ,
    child: Column(

      children: [
        Stack(
          alignment:AlignmentDirectional.bottomEnd ,
          children: [
            CircleAvatar(
              radius:30.0 ,
              backgroundImage:NetworkImage('https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/40100060_715908432080291_2563245102252163072_n.jpg?_nc_cat=111&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=ZsISwfyqLHAAX9-kKFX&_nc_ht=scontent.fcai20-6.fna&oh=c958dc9f8e9b59d6735a58a4fbbe0978&oe=6136B3AB') ,
            ),
            CircleAvatar(

              radius:8.0 ,
              backgroundColor:Colors.white ,
            ),
            CircleAvatar(

              radius:7.0 ,
              backgroundColor:Colors.green ,
            ),
          ],
        ),
        SizedBox(
          height:10.0 ,
        ),
        Text('Walid Mohamed',
          style:TextStyle(
            fontSize:20,
            fontWeight:FontWeight.bold,
          ) ,
        ),
      ],
    ),
  );
}