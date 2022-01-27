import 'dart:html';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class awesome extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<awesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awsome Dialog "),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AnimatedButton(
                  text: 'click here',
                  color: Colors.black,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.ERROR,
                      borderSide: BorderSide(color: Colors.grey, width: 5),
                      width: 280,
                      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
                      headerAnimationLoop: true,
                      animType: AnimType.BOTTOMSLIDE,
                      desc: 'something went wrong',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
