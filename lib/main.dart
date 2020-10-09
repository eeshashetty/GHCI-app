import 'package:flutter/material.dart';
import 'package:ako/routes/profile.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ako',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline1: TextStyle(fontFamily: 'FiraSans', fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
          headline2: TextStyle(fontFamily: 'FiraSans', fontSize: 25, fontWeight: FontWeight.w600, letterSpacing: 1, color: Colors.white),
          bodyText1: TextStyle(fontFamily: 'FiraSans', fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 1.5, color: Colors.white),
          bodyText2: TextStyle(fontFamily: 'FiraSans', fontSize: 22, fontWeight: FontWeight.w400, letterSpacing:0.5, color: Colors.white),

        )
      ),
      home: MyHomePage(title: 'Ako'),
      routes: {
        '/profile': (context) => Profile(),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(121212),
      body: Column(
        children: <Widget>[
          Center(
            child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image(
                  image: AssetImage('assets/images/logo-title.png'),
                  width: 200,
                ),
              ),
              SizedBox(height: 50,),
              Text(
                'Maximize your \nProductivity',
                  style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 100,),
              OutlinedButton(
                onPressed: () {Navigator.of(context).pushReplacementNamed('/profile');},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.fromLTRB(70, 30, 70, 30)),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
                    side: MaterialStateProperty.all<BorderSide>((BorderSide(color: Colors.white, width: 2.0, style: BorderStyle.solid))),
                ),
                child: Text(
                  'CONTINUE',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
        ),
          ),
    ]
      ),
    );
  }
}
