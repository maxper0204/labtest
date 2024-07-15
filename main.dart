import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Login System",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Please login!", style: TextStyle(
                fontSize: 35,
              ),),
              SizedBox(height: 30),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: "Username",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  hintText: "Password",
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: (){
                String username = _usernameController.text;
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => WelcomePage(username: username),
                  )
                );
              }, child: Text("Login"))
            ]
          ),
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget{

  final String username;
  WelcomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.indigoAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Welcome \n$username !", style: TextStyle(fontSize: 55, color: Colors.black),textAlign: TextAlign.center,),
          ],
        ),
      ), 
    );
  }
}
