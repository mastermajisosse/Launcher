import 'package:flutter/material.dart';
import 'package:launcher/utils/mystyle.dart';
import 'package:launcher/utils/size_config.dart';

class LeftScreenAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 32, right: 56, top: 16),
                child: Text(
                  "Notification",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 10),
              Padding(
                padding: EdgeInsets.only(left: 32, right: 56),
                child: Text(
                  "Just turn on access for Before Luncher on the next screen.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 20),
              Container(
                height: SizeConfig.screenHeight / 3,
                alignment: Alignment.center,
                child: Image.asset("assets/unnamed.png"),
              ),
              Spacer(),
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
                    "Enable Notification Access",
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
