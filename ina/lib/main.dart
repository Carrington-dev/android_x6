import 'package:flutter/material.dart';

void main() {
  runApp(Food());
}

class Food extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Oft Eats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // titleSpacing: 0,
        title: Text("Oft Eats"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Increase volume by 10',
            onPressed: () {

            },
          ),
          IconButton(
            icon: const Icon(Icons.add_shopping_cart),
            tooltip: 'View your cart',
            onPressed: () {

            },
          ),
          IconButton(icon: const Icon(Icons.search), onPressed: (){

          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter you full name",
                labelText: 'Name',
                border: OutlineInputBorder(

                ),

                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )

              ),
              maxLength: 30,
              obscureText: false,
              onChanged: (text) {
                print('First text field: $text');
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                  hintText: "Enter your email address",
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                  fillColor: Colors.blue[200],
                  filled: true

              ),
              maxLength: 30,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
                border: UnderlineInputBorder(),
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]
                )
              ),
              obscureText: true,
              maxLength: 20,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },

            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    TextButton(
                        child: Text(
                            "Register".toUpperCase(),
                            style: TextStyle(fontSize: 14)
                        ),

                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue[900]),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue[900])
                                )
                            )
                        ),
                        onPressed: () => null
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                        child: Text(
                            "Sign In".toUpperCase(),
                            style: TextStyle(fontSize: 14)
                        ),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[900]),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(color: Colors.blue[900])
                                )
                            )
                        ),
                        onPressed: (){
                          print("Hi");
                        }
                    )
                  ]
              ),
            )

          ],
        ),
      ),
    );
  }
}


