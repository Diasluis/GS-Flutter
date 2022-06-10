// ignore_for_file: deprecated_member_use

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_checkpoint/src/app/pages/lists/list.page.dart';

import '../../../utils/texts.dart';

class Info3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar////
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 50,
            child: Image.asset("assets/logo.png"),
          ),
        ),
        leading: Container(
          height: 60,
          width: 60,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/foguete.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
      //Menu e pop up///////////////////////////
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(children: <Widget>[
          Text(
            title4,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50),
          ),
          Text(text4),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors: [
                  Color(0xFFF58524),
                  Color(0XFFF92B7F),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Próxima página",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListPage(),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
