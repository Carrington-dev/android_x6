import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import '../login/log_in_screen.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _name = '';
  String _email = '';
  String _age = '';
  String _password = '';
  String _dBirth = '';


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Name",
          hintText: "Carrington9678",
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(15),
          isDense: true,

        ),
        validator: (value){
          if(value!.isEmpty || value == null){
            return 'Name is required';
          }
          return null;
        },
        onChanged: (value){
          var s =  value;
          _name = s;
        },
        onSaved: (value){
          var s =  value!;
          _name = s;
        },
        autocorrect: true,
      ),
    );
  }
  Widget _buildDateOfBirth(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DateTimeFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(color: Colors.black45),
          errorStyle: TextStyle(color: Colors.redAccent),
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(15),
          isDense: true,
          suffixIcon: Icon(Icons.event_note),
          labelText: 'My Super Date Time Field',
        ),
        firstDate: DateTime.now().add(const Duration(days: 10)),
        initialDate: DateTime.now().add(const Duration(days: 10)),
        autovalidateMode: AutovalidateMode.always,
        // validator: (DateTime? e) =>
        // (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
        // onDateSelected: (DateTime value) {
        //   print(value);
        // },
        validator:  (DateTime? value){
          if(value == null){
            return 'Date is required';
          }
          return null;
        },

        // onSaved: (value){
        //   _dBirth = value as String;
        // },
      ),

    );
  }

  Widget _dOBirthName(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DateTimeFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(color: Colors.black45),
          errorStyle: TextStyle(color: Colors.redAccent),
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.event_note),
          labelText: 'Only time',
          contentPadding: EdgeInsets.all(15),
          isDense: true,
        ),
        mode: DateTimeFieldPickerMode.time,
        autovalidateMode: AutovalidateMode.always,
        // validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
        // onDateSelected: (DateTime value) {
        //   print(value);
        // },
        validator:  (DateTime? value){
          if(value == null){
            return 'Time is required';
          }
          return null;
        },
      ),
    );
  }



  Widget _buildPass(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(

        decoration: InputDecoration(
          labelText: "Name",
          hintText: "#Mu&Muas",
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(15),
          isDense: true,

        ),
        validator: (value){
          if(value!.isEmpty || value == null){
            return 'Name is required';
          }
          return null;
        },
        onChanged: (value){
          var s =  value;
          _password = s;
        },
        onSaved: (value){
          var s =  value;
          _password = s!;
        },
        obscureText: true,
        autocorrect: false,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    double pad = screenHeight * 0.2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 14,
        title: Text('Sign Up Now'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () { print("hi"); },
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(
              Icons.notifications
          )),
          IconButton(onPressed: (){}, icon: Icon(
              Icons.menu_sharp
          ))


        ],
      ),

      body: SingleChildScrollView(
        // width: screenWidth,
        // height: screenHeight,

        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: screenHeight * 0.2,),
                _buildName(),
                _dOBirthName(),
                _buildDateOfBirth(),
                _buildPass(),

                SizedBox(
                  height: 34,
                )
                ,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonTheme(
                          minWidth: screenWidth * 0.3,
                          padding: EdgeInsets.all(8),
                          child: RaisedButton(
                            padding: EdgeInsets.all(15),

                            onPressed: (){
                              if(!_formKey.currentState!.validate()){
                                return;
                              }
                              _formKey.currentState!.save();

                              print(_name);
                              print(_password);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LogScreen()),
                              );
                            },
                            color: Colors.deepOrange,
                            child: Text("Sign in",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                        ButtonTheme(
                          minWidth: screenWidth * 0.3,
                          padding: EdgeInsets.all(8),
                          child: RaisedButton(
                            padding: EdgeInsets.all(15),

                            onPressed: (){
                              if(!_formKey.currentState!.validate()){
                                return;
                              }
                              _formKey.currentState!.save();

                              print(_name);
                              print(_password);
                            },

                            color: Colors.black,
                            child: Text("Sign Up",

                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
