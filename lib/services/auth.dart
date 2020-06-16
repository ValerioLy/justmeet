import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:google_sign_in/google_sign_in.dart';


abstract class BaseAuth {
  Future<String> signIn(String email, String password);

  Future<String> signUp(String email, String password);

  Future<FirebaseUser> getCurrentUser();

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();

  Future<FirebaseUser> loginWithGoogle();
}

class Auth implements BaseAuth {

  static FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  static GoogleSignIn googleSignIn = GoogleSignIn();

  String idUser;

  Future<String> signIn(String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> signUp(String email, String password) async {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    idUser = user.uid;
    print("id dell'utente autenticato: "+idUser);
    return user.uid;
  }

  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<void> sendEmailVerification() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.sendEmailVerification();
  }

  Future<bool> isEmailVerified() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.isEmailVerified;
  }

  Future<void> sendPasswordResetEmail(String email) async {
    assert(email != null);
    await _firebaseAuth.sendPasswordResetEmail(email: email);

  }

  Future<void> updatePassword(String password) async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    assert(password != null);
    return await user.updatePassword(password);
  }


  Future<FirebaseUser> loginWithGoogle() async {

    googleSignIn = GoogleSignIn();
      GoogleSignInAccount account = await googleSignIn.signIn();
      GoogleSignInAuthentication gsa = await account.authentication;


  }

  void signOutGoogle() async{
    await googleSignIn.signOut();

    print("User Sign Out");
  }
}