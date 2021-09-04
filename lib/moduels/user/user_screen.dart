import 'package:flutter/material.dart';
class userModel{
   final int Id;
   final String Name;
  final String Phone;

  userModel({required this.Id, required this.Name, required this.Phone} );


}
class userScreen extends StatelessWidget {
List<userModel>users=[
  userModel(
      Id :1,
      Name:'singary',
      Phone:'01028347160',
  ),
  userModel(
    Id :2,
    Name:'walid',
    Phone:'010257851',
  ),
  userModel(
    Id :3,
    Name:'body',
    Phone:'010258647',
  ),
  userModel(
    Id :4,
    Name:'mohamed',
    Phone:'0103697584',
  ),
  userModel(
    Id :5,
    Name:'mahmoud',
    Phone:'0107586428',
  ),
  userModel(
    Id :6,
    Name:'omar',
    Phone:'010789654',
  ),
  userModel(
    Id :7,
    Name:'seed',
    Phone:'0112589745',
  ),
  userModel(
    Id :8,
    Name:'mohasen',
    Phone:'011365458',
  ),
  userModel(
    Id :9,
    Name:'araby',
    Phone:'011259753',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(
          'User',
        ) ,
      ) ,
      body:ListView.separated(
          itemBuilder: (context,index){
            return buildUserItem(users[index]);
          },
          separatorBuilder: (context,index){
            return Container(
              width:double.infinity ,
              height:1 ,
              color:Colors.grey[300] ,
            );
          },
          itemCount: users.length),

    );
  }
}
Widget buildUserItem(userModel user){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius:25.0 ,
          child:Text('${user.Id}',
            style:TextStyle(
              fontSize:25.0,

            ) ,
          ) ,
        ),
        SizedBox(
          width:20.0 ,
        ),
        Column(
          mainAxisSize:MainAxisSize.min ,
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Text('${user.Name}',
              style:TextStyle(
                fontSize:25.0,
                fontWeight:FontWeight.bold,
              ) ,
            ),
            Text('${user.Phone}',
              style:TextStyle(
                fontSize:25.0,
                color:Colors.grey,
              ) ,
            ),
          ],
        )
      ],

    ),
  );
}