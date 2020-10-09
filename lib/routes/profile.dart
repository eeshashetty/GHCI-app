import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: () { Navigator.of(context).pushReplacementNamed('/'); },
            )

          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 50, 80, 0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pfp.jpeg'),
                    radius: 100,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'April Ludgate',
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    splashColor: Colors.grey,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Align(alignment: Alignment.centerLeft, child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Text('To Dos', style: Theme.of(context).textTheme.bodyText2),
                        SizedBox(width: 20,),
                        CircleAvatar(radius: 18, backgroundColor: Colors.blueAccent, child: Text('20', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),)
                        ],
                      ),
                    )
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    splashColor: Colors.grey,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Align(alignment: Alignment.centerLeft, child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Text('Notes', style: Theme.of(context).textTheme.bodyText2),
                          SizedBox(width: 20,),
                          CircleAvatar(radius: 18, backgroundColor: Colors.blueAccent, child: Text('12', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),)
                        ],
                      ),
                    )
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    splashColor: Colors.grey,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Align(alignment: Alignment.centerLeft, child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Text('Scanned Documents', style: Theme.of(context).textTheme.bodyText2),
                          SizedBox(width: 20,),
                          CircleAvatar(radius: 18, backgroundColor: Colors.blueAccent, child: Text('10', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),)
                        ],
                      ),
                    )
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    splashColor: Colors.grey,
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Align(alignment: Alignment.centerLeft, child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Text('Groups', style: Theme.of(context).textTheme.bodyText2),
                          SizedBox(width: 20,),
                          CircleAvatar(radius: 18, backgroundColor: Colors.blueAccent, child: Text('2', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),)
                        ],
                      ),
                    )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}