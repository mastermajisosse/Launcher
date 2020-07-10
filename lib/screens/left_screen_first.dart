import 'package:flutter/material.dart';
import 'package:launcher/utils/mystyle.dart';
import 'package:launcher/utils/size_config.dart';

class LeftScreenFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF48339a),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Text(
                    "The less important notification is here.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 20),
              Container(
                height: SizeConfig.screenHeight / 3,
                alignment: Alignment.center,
                child: Image.asset("assets/leftfirst.jpg"),
              ),
              Spacer(flex: 1),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/main');
                },
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight / 12,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.black,
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
