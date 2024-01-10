import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() {
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'First Project of lab 12'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
 

  void initState() {
    super.initState();
    Firebase.initializeApp();
  }

  final _textFieldController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You can save a new user here',
            ),

            TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                labelText: "Enter Username:",
              ),
            ),

            TextButton(
              onPressed: () {
                FirebaseFirestore.instance.collection("users").add({
                  "user": _textFieldController.text, 
                }).then((value) {
                  
                }).catchError((error) {
                  
                });
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
