import 'package:flutter/cupertino.dart';

class DomandaClass {

  String _title;
  String _item;
  String _item2;
  String _item3;

  DomandaClass(@required this._title, @required this._item, @required this._item2, @required this._item3);

  String get title => _title;
  String get item => _item;
  String get item2 => _item2;
  String get item3 => _item3;

  set item(String value) {
    _item = value;
  }
  set item2(String value) {
    _item2 = value;
  }
  set item3(String value) {
    _item3 = value;
  }

}