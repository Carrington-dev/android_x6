import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String _name = '';
  String _password = '';
  String _email = '';
  String _url = '';
  String _school = '';
  String _grade = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildSchool(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
          labelText: "School",
          hintText: "Name of your school"
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email is required';
          }

          return null;
        },
        onSaved: (value){
          var _value = value;
          _school = _value!;
        },
      ),
    );
  }

  Widget _buildName(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
            labelText: "Name",
            hintText: "Enter your full name"
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }

            return null;
          },
          onSaved: (value){
            var _value = value;
            _name = _value!;
          },
        ),
      );
    }

    Widget _buildPassword(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
            labelText: "Password",
            hintText: "Enter your password"
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }

            return null;
          },
          onSaved: (value){
            var _value = value;
            _password = _value!;
          },
        ),
      );
    }

    Widget _buildUrl(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
            labelText: "Url",
            hintText: "Enter your LinkedIn url"
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }

            return null;
          },
          onSaved: (value){
            var _value = value;
            _url = _value!;
          },
        ),
      );
    }

    Widget _buildGrade(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Grade",
              hintText: "Enter your grade"
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }

            return null;
          },
          onSaved: (value){
            var _value = value;
            _grade = _value!;
          },
        ),
      );
    }

    Widget _buildEmail(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              hintText: "Enter your full email address"
          ),
          validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }

            return null;
          },
          onSaved: (value){
            var _value = value;
            _email = _value!;
          },
        ),
      );
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
      ),
      body: Container(
        margin:  EdgeInsets.all(16),
        child: Form(
            key: _formKey,
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              // itemExtent: 58,
              children: [
                _buildEmail(),
                _buildSchool(),
                _buildName(),
                _buildUrl(),
                _buildGrade(),
                _buildPassword(),

                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                    color: Colors.blue[900],
                    onPressed: (){
                      if(!_formKey.currentState!.validate()){
                        return;
                      }
                      _formKey.currentState!.save();

                      print(_email);
                      print(_grade);
                      print(_url);
                      print(_name);
                      print(_password);
                      print(_school);
                    },
                    child: Center(
                      child:  Text("Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ),

              ],
            ),
        ),
      ),
    );
  }
}
