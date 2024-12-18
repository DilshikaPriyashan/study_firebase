import 'package:flutter/material.dart';
import 'package:study_firebase/services/auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create a object form authService
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          ElevatedButton(
            onPressed: () async {
              await _auth.signOut();
            },
            child: Icon(Icons.logout),
          )
        ],
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [Text("Home")],
      ),
    );
  }
}
