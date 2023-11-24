import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodhub/screens/home/widgets/slider_custom.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            _buildNagivation(screenWidth, screenHeight),
             _buildCategories(),
          ],
        ),
      ),
    );
  }

  Widget _buildNagivation(screenWidth, screenHeight) {
    return Container(
      width: screenWidth,
      height: screenHeight * 0.15,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.black,
                onPressed: (){},
                child: Text("Location",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

              ),
              SizedBox(
                width: screenWidth * 0.1,
              ),
              RaisedButton(
                color: Colors.white,
                onPressed: (){},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

                child: Text(
                  "Pick-up",
                  style: TextStyle(
                    color: Colors.black,

                  ),

                ),
              )
            ],
          ),
          SizedBox(
            width: screenWidth * 0.1,
          )
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      child: CustomSliderWidget(
        items: [
          "assets/branding/slide_1.jpg",
          "assets/branding/slide_2.jpg",
          "assets/branding/slide_3.jpg",
        ]
      )
    );
  }
}
