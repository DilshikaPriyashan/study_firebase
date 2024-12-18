import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_firebase/models/userModel.dart';
import 'package:study_firebase/screens/authentication/authenticate.dart';
import 'package:study_firebase/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
