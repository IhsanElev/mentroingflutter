import 'package:flutter/material.dart';
import 'package:register/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  bool firstbox = false;
  bool secondbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Registrasi'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.keyboard_arrow_left),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    hintText: "Name"),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    hintText: "username"),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    hintText: "email"),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    hintText: "password"),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    hintText: "confirm password"),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Text('available to be a'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: CheckboxListTile(
                      value: this.firstbox,
                      onChanged: (bool value) {},
                      title: Text('mentor'),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Flexible(
                    child: CheckboxListTile(
                      value: this.firstbox,
                      onChanged: (bool value) {},
                      title: Text('mente'),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ],
              ),
              CheckboxListTile(
                title: Text(
                    'I affirm that i have read and accept to be bound by the anita bcode of conduct terms and privacy policy further i consenent to use of my information for starter purpose'),
                value: this.firstbox,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool value) {},
              ),
              RaisedButton(
                child: Text('Sign Up'),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Profile()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
