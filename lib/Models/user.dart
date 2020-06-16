import 'package:flutter/cupertino.dart';

class UserClass {

  var _id;
  var _username;
  var _email;
  var _telefono;
  var _paese;
  var _ricordaaccount;
  var _genere;
  var _name;
  var _eta;
  var _citta;
  var _status;
  var _descrizione;
  List _images;


  UserClass({String id, String username, String email,  bool ricordaaccount, String telefono,  String paese, String genere, String name, String eta, String citta, String status, String descrizione, List
  images}): _id = id, _username = username, _email = email, _ricordaaccount = ricordaaccount, _telefono = telefono, _paese = paese, _genere = genere, _name = name, _eta = eta, _citta = citta, _status = status, _descrizione = descrizione, _images = images;

  bool get ricordaaccount => _ricordaaccount;


  set ricordaaccount(bool value) {
    _ricordaaccount = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }



  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get telefono => _telefono;

  set telefono(String value) {
    _telefono = value;
  }

  String get paese => _paese;

  set paese(String value) {
    _paese = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  String get genere => _genere;

  set genere(String value) {
    _genere = value;
  }

  get descrizione => _descrizione;

  set descrizione(value) {
    _descrizione = value;
  }

  get status => _status;

  set status(value) {
    _status = value;
  }

  get citta => _citta;

  set citta(value) {
    _citta = value;
  }

  get eta => _eta;

  set eta(value) {
    _eta = value;
  }

  List get images => _images;

  set images(List value) {
    _images = value;
  }
}