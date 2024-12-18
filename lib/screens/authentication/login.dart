import 'package:flutter/material.dart';
import 'package:study_firebase/services/auth.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LogIn"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              dynamic result = await _auth.signInAnonymously();
              if (result == null) {
                print("error will come");
              } else {
                print("Log in anonymously");
                print(result.uid);
              }
            },
            child: const Text("LogIn Anonymously"),
          ),
        ],
      ),
    );
  }
}
