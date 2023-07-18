import 'package:flutter/material.dart';
import 'package:food_swipes/pages/home.dart';
//import 'package:food_swipes/pages/loading.dart';

void main() => runApp(
      MaterialApp(
        //initialRoute: '/',
        //routes: {
        //  '/': (context) => Loading(),
        //  '/home': (context) => Home(),
        //'/location': (context) => ChooseLocation(),
        //},
        title: 'Food Swipes',
        theme: ThemeData(
          primaryColor: Colors.grey[50],
        ),
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
