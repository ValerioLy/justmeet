import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:justmeet/services/db.dart';

import '../colors.dart';
import 'package:crypto/crypto.dart';

class CardInsertImage extends StatefulWidget{
  _CardInsertImageState _child;
  @override
  _CardInsertImageState createState(){
    _child=_CardInsertImageState();
    return _child;
  }

  Future upload(){
    return _child.upload();
  }

}

class _CardInsertImageState extends State<CardInsertImage>{

  File _imageFile;
  String _uploadedFileURL;
  DB db = new DB();

  Future upload() async {
    var uidConvert = sha1.convert(await _imageFile.readAsBytes());
    StorageReference ref =
    FirebaseStorage.instance.ref().child('users').child(uidConvert.toString());
    StorageUploadTask uploadTask = ref.putFile(_imageFile);
    return await (await uploadTask.onComplete).ref.getDownloadURL().then((fileURL) {
      _uploadedFileURL = fileURL;
      db.updateUserImage(uidConvert.toString());
    });
  }


  Future<void> _pickSaveImage() async {
    final file=await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile= file;
    });



  }

  @override
  Widget build(BuildContext context) {
    return(
    Container(
        width: 90,
        child:
        _imageFile != null
            ?
        Container(
            width: 90,
            decoration: new BoxDecoration(
                color: Colore.rosaChiaro,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
                border: Border.all(color: Colors.white),
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: FileImage(_imageFile)
                )
            ))
            :  Card(
          child: IconButton(icon: Icon(Icons.add, color: Colors.white, size: 40,), onPressed: (){_pickSaveImage(); }),
          color: Colore.rosaChiaro,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
            side: BorderSide(color: Colors.white),
          ),
        )

    ));
  }

}