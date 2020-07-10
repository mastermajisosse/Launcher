import 'package:flutter/material.dart';
import 'package:launcher/utils/mystyle.dart';
import 'package:launcher/utils/size_config.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> words = [
      "Waze",
      "Music",
      "Chrome",
      "Photos",
      "Mail",
      "Phone",
      "Messages",
      "Camera"
    ];
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Mystyle.primarycolo,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                child: ListTile(
                  title: Text(
                    words[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
