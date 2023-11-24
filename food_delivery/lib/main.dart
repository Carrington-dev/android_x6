import 'package:flutter/material.dart';
import 'package:food_delivery/pages/FoodDetailsPage.dart';
import 'package:food_delivery/pages/FoodOrderPage.dart';
import 'package:food_delivery/pages/HomePage.dart';
import 'package:food_delivery/pages/SignInPage.dart';
import 'package:food_delivery/pages/SignUpPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
      home: HomePage(),
    ));
