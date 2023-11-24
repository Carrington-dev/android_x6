import 'package:flutter/material.dart';
import 'package:foodhub/screens/auth/register/sign_up.dart';


class LogScreen extends StatefulWidget {
  @override
  _LogScreenState createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  String _name = '';
  String _password = '';


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



  Widget _buildPass(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(

        decoration: InputDecoration(
          labelText: "Name",
          hintText: "#Mu&Muas",
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(15),



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
        title: Text('Sign In Now'),
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

      body: Container(
        width: screenWidth,
        height: screenHeight,

        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: screenHeight * 0.2,),
                _buildName(),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpScreen()),
                              );
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
