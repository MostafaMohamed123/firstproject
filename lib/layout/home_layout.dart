import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rgrg/moduels/archived/archived_screen.dart';
import 'package:rgrg/moduels/done/done_screen.dart';
import 'package:rgrg/moduels/tasks/tasks_screen.dart';
import 'package:rgrg/shared/componets/componets.dart';
import 'package:sqflite/sqflite.dart';

class home_layout extends StatefulWidget {
  @override
  _home_layoutState createState() => _home_layoutState();
}

class _home_layoutState extends State<home_layout> {
  int currentIndex = 0;

  List<Widget> Screens = [
    tasks_screen(),
    done_screen(),
    archived_screen(),
  ];
  List<String> Titels = [
    'tasks_screen',
    'done_screen',
    'archived_screen',
  ];
  late Database dataBase;
  IconData fabicon = Icons.edit;

  @override
  void initState() {
    creatDataBase();
    super.initState();
  }

  var keyScaffold = GlobalKey<ScaffoldState>();
  var formkey = GlobalKey<FormState>();
  bool isBottomSheet = false;
  var titleControl = TextEditingController();
  var timeControl = TextEditingController();
  var dataControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
      appBar: AppBar(
        title: Text(
          Titels[currentIndex],
        ),
      ),
      body: Screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (isBottomSheet) {
            if (formkey.currentState!.validate()) {
              insertDatabase(
                title: titleControl.text,
                data: dataControl.text,
                time: timeControl.text,
              ).then((value) {
                Navigator.pop(context);
                isBottomSheet = false;
                setState(() {
                  fabicon = Icons.edit;
                });
              });
            }
          } else {
            keyScaffold.currentState!.showBottomSheet((context) => Container(
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(20.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        defaultTextFormField(
                          controller: titleControl,
                          type: TextInputType.text,
                          Validator: (value) {
                            if (value!.isEmpty) {
                              return 'text must not be empty';
                            }
                            return null;
                          },
                          labelText: 'Task title',
                          prefix: Icons.title,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultTextFormField(
                          controller: timeControl,
                          type: TextInputType.datetime,
                          Validator: (value) {
                            if (value!.isEmpty) {
                              return 'time must not be empty';
                            }
                            return null;
                          },
                          labelText: 'Task time',
                          prefix: Icons.watch_later_outlined,
                          onTap: () {
                            showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            ).then((value) {
                              timeControl.text =
                                  value!.format(context).toString();
                              print(value.format(context));
                            });
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultTextFormField(
                            controller: dataControl,
                            type: TextInputType.datetime,
                            Validator: (value) {
                              if (value!.isEmpty) {
                                return 'data must not be empty';
                              }
                              return null;
                            },
                            labelText: 'Task data',
                            prefix: Icons.calendar_today_outlined,
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse('2021-10-02'),
                              ).then((value) {
                                dataControl.text =
                                    DateFormat.yMMMd().format(value!);
                                print(DateFormat.yMMMd().format(value));
                              });
                            }),
                      ],
                    ),
                  ),
                ));
            isBottomSheet = true;
            setState(() {
              fabicon = Icons.add;
            });
          }

/*
        try {
          var name = await getdata();
          print(name);
          throw('error!!!!!!!!!!!!!');
        }
        catch(error){
          print('error${error.toString()}');
        }
        */
          /*
         getdata().then((value){
           print(value);
           print('osama');
           throw('rgrg!!!!!!!!!!!111111');
         }).catchError((error){
           print('error is ${error.toString()}');
         });*/
        },
        child: Icon(fabicon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        elevation: 5.0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

  void creatDataBase() async {
    dataBase = await openDatabase(
      'todo databse',
      version: 1,
      onCreate: (database, version) async {
        print('database created');
        await database.execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY,title TEXT,data TEXT,time TEXT,status TEXT,)');
      },
      onOpen: (database) {
        print('database opened');
      },
    );
  }

  Future insertDatabase({
    required String title,
    required String data,
    required String time,
  }) async {
    return await dataBase.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO tasks(title,data,time,status)values("$title","$data","$time","new")')
          .then((value) {
        print('$value insert succful');
      });
      ;
      return null;
    });
  }
}

Future<String> getdata() async {
  return 'I am Singaryh';
}
