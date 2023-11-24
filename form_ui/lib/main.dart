import 'package:flutter/material.dart';
import 'package:form_ui/form_widget.dart';

void main(){
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormScreen(),
    );
  }
}
