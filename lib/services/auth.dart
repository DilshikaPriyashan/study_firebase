import 'package:firebase_auth/firebase_auth.dart';
import 'package:study_firebase/models/userModel.dart';

class AuthServices {
  //firabase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a user form firabase user with uid
  UserModel? _userWithFirabaseUserUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // create a stream for checking the auth changes in the user
  Stream<UserModel?> get user{
    return _auth.authStateChanges().map(_userWithFirabaseUserUid);
  }

  //sign in anonymous
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userWithFirabaseUserUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}
