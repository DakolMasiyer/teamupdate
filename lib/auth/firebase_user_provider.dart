import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UpdateFirebaseUser {
  UpdateFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

UpdateFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UpdateFirebaseUser> updateFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<UpdateFirebaseUser>((user) => currentUser = UpdateFirebaseUser(user));
