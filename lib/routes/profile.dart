import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

var notes = [
  ['Project Details', '1. Create a Calculator App.\n2. Extra Marks for Design\n3. Make Scientific Calc as well'],
  ['Physics Exam Portion','Modules 4 through 6. (Skip Chapter 7)'],
  ['English Notes', 'Merchant of Venice - Act 2 Scene 4.\nDiscussed scene plot, character develpments.']
];

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _State createState() => _State();
}

class _State extends State<Profile> {
  List<String> _tasks = [
    "AI Assignment - 2",
    "Calculus Quiz",
    "IOT Project Review",
    "IOT Assignment - 1"
  ];




  List<bool> _isChecked = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('ako', style: Theme.of(context).textTheme.headline1,),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.logout),
                tooltip: 'Logout',
                onPressed: () { Navigator.of(context).pushReplacementNamed('/'); },
              )

            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person_pin)),
                Tab(icon: Icon(Icons.fact_check_rounded)),
                Tab(icon: Icon(Icons.notes)),
                Tab(icon: Icon(Icons.scanner_rounded),),
                Tab(icon: Icon(Icons.group_rounded),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
            Center(
              child:
                Column (
                    mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/pfp.jpeg'),
                              radius: 130,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text(
                            'April Ludgate',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          SizedBox(height: 30,),
                          Text(
                            'aludg@email.edu',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '+91 849579844',
                            style: TextStyle(fontSize: 20),
                          )

                        ],
                      ),
            ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,40,20,40),
                  child: ListView(
                    children: _tasks.map((task) => CheckboxListTile
                        (
                          title: Text(task, style: TextStyle(fontSize: 20,)),
                          value: _isChecked[_tasks.indexOf(task)],
                          onChanged: (val) {
                            setState(() {
                              _isChecked[_tasks.indexOf(task)] = val;
                            });
                          },
                        )).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Text('My Notes', style: Theme.of(context).textTheme.headline1,),
                          ),
                        ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: notes.map((note) => ExpansionTile(
                            title: Text(note[0], style: TextStyle(fontSize: 20),),
                            children: [
                              Container(
                                padding: EdgeInsets.all(30),
                                  alignment: Alignment.centerLeft,
                                  child: Text(note[1], style: TextStyle(fontFamily: 'Arial', fontSize: 18))
                              )
                            ],
                          )).toList()
                        ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: () { _addNote(context); },
                          child: Icon(Icons.add),
                        ),
                      )

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                              content: Text("Sorry, This Feature is still under development :("),
                            ),
                           );
                          },
                        iconSize: 200,
                        icon: Icon(Icons.scanner,color: Colors.greenAccent,),
                      ),
                      Text('Tap to Scan !', style: Theme.of(context).textTheme.headline2,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      ExpansionTile(
                        title: Row(
                          children: [
                            Icon(Icons.group, size: 30,),
                            SizedBox(width: 30,),
                            Text('IOT Class Group', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Members: 4\n', style: TextStyle(fontSize: 20, fontFamily: 'Arial'),),
                                Text('Shared Assignments: 7', style: TextStyle(fontSize: 20, fontFamily: 'Arial'),),
                                SizedBox(height: 40),
                                Row(
                                  children: [
                                    MaterialButton(
                                      child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                            borderRadius: BorderRadius.circular(9),
                                          ),
                                          child: Text('Share To-Do', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                                    ),
                                    MaterialButton(
                                        child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                            borderRadius: BorderRadius.circular(9),
                                          ),
                                          child: Text('Share Notes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                        )
                                    )
                                  ],
                                ),
                       ],
                            ),
                          ),
                  ],
                          ),

                      ExpansionTile(
                        title: Row(
                          children: [
                            Icon(Icons.group, size: 30,),
                            SizedBox(width: 30,),
                            Text('Web Project Group', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Members: 5\n', style: TextStyle(fontSize: 20, fontFamily: 'Arial'),),
                                Text('Shared Assignments: 1', style: TextStyle(fontSize: 20, fontFamily: 'Arial'),),
                                SizedBox(height: 50,),
                                Row(
                                  children: [
                                    MaterialButton(
                                      child: Container(
                                        padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                            borderRadius: BorderRadius.circular(9),
                                          ),
                                          child: Text('Share To-Do', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                                    ),
                                    MaterialButton(
                                        child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                            borderRadius: BorderRadius.circular(9),
                                          ),
                                          child: Text('Share Notes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                        )
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                )
               ]
          ),
        ),
      );
  }
}

_addNote(BuildContext context) {
  var title, body;
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text("Add a Note!"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            onChanged: (val) {
              title = val;
            },
              decoration: InputDecoration(
                  labelText: 'Title'
              ),
          ),
          TextFormField(
            onChanged: (val) {
              body = val;
            },
          decoration: InputDecoration(
              labelText: 'Body'

          ),
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('ADD'),
          onPressed: () {
            notes.add([title,body]);
            Navigator.of(context).pop();
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Note Added!'),
                content: Text('Login Again to view New Notes'),
              )
            );
          },
        )
      ],
  ),
  );
}