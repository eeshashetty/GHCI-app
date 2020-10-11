import 'package:flutter/material.dart';
import 'package:ako/routes/profile.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

// import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
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
                padding: const EdgeInsets.only(top: 70),
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
              MaterialButton(
                onPressed: () {Navigator.of(context).pushReplacementNamed('/profile');},
                child: Container(
                  alignment: Alignment.center,
                  width: 240,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(9)
                  ),
                  child: Text(
                    'CONTINUE',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
            ],
        ),
          ),
    ]
      ),
    );
  }
}
