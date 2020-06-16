import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:justmeet/Models/user.dart';
import 'package:justmeet/services/auth.dart';
import 'package:justmeet/utils.dart';

abstract class BaseDB {
  Future<String> createUser(String username, String email, String telefono, String paese, bool ricordaaccount, String genere, String name, String eta, String citta, String status, String descrizione, List images);
  Future<String> updateUser(String genere, {String email, String telefono, String paese, bool ricordaaccount, String username});
  Future<String> updateUserInfo(String name, String eta, String citta, String status, String descrizione);
  Future<String> updateUserImage(String images);
  Future<dynamic> getCountry();


}

class DB implements BaseDB {

  final userReference = FirebaseDatabase.instance.reference().child('user');
  final countryReference = FirebaseDatabase.instance.reference().child('città');

  Auth _auth = new Auth();
  FirebaseUser user;

  @override
  Future<String> createUser(String username, String email, String telefono, String paese, bool ricordaaccount, String genere, String name, String eta, String citta, String status, String descrizione, List images) async {

     user = await _auth.getCurrentUser();

      userReference.child(user.uid).set({
        'username': username,
        'email': email,
        'telefono': telefono,
        'paese': paese,
        'ricordaaccount': ricordaaccount,
        'genere': genere,
        'name': name,
        'eta': eta,
        'citta': citta,
        'status': status,
        'descrizione': descrizione,
        'images': images
      }).then((_) {
        print("registrazione effettuata con successo");
      });

    }


  @override
  Future<String> updateUser(String genere, {String email, String telefono, String paese, bool ricordaaccount, String username}) async {

    user = await _auth.getCurrentUser();

    userReference.child(user.uid).update({
      'genere': genere
    }).then((_) {
      print("utente aggiornato"+user.uid);
    });


  }

  @override
  Future<String> updateUserImage(String images) async {

    user = await _auth.getCurrentUser();

    userReference.child(user.uid).child('images').push().set(
      images
    );
  }

  @override
  Future<String> updateUserInfo(String name, String eta, String citta, String status, String descrizione) async {

     user = await _auth.getCurrentUser();
    userReference.child(user.uid).update({
      'name': name,
      'eta': eta,
      'citta': citta,
      'status': status,
      'descrizione': descrizione,
    }).then((_) {
      print("info caricate ");
    });
  }

  @override
  Future<dynamic > getCountry() async {

      countryReference.orderByChild('Provincia').once().then((value) => print(value.value));

  }






}