// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_app/mode_theme.dart';

class TextScannedPage extends StatelessWidget {
  const TextScannedPage({super.key, required this.result});

  final String result;

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(builder: (context, ModelTheme themeNotifier, child) {
      return Scaffold(
        backgroundColor: themeNotifier.isDark ? Colors.grey.shade900 : Colors.white,
        appBar: AppBar(
          backgroundColor: themeNotifier.isDark ? Colors.black54 : Colors.deepOrange,
          title: Text("Text Recognition" , style: TextStyle(
            color: themeNotifier.isDark ? Colors.deepOrange : Colors.white,
          ),),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back , color: themeNotifier.isDark ? Colors.deepOrange : Colors.white,),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 350,
            width: 300,
            margin: EdgeInsets.only(top: 70),
            padding: EdgeInsets.only(left: 28, bottom: 20, right: 18, top: 15),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  result,
                  style: TextStyle(color: Colors.deepOrange),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/note.jpg'), fit: BoxFit.contain)),
          ),
        ),
      );
    });
  }
}
