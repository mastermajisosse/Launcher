import 'package:flutter/material.dart';
import 'package:launcher/utils/mystyle.dart';
import 'package:launcher/utils/size_config.dart';

class RightScreen extends StatefulWidget {
  @override
  _RightScreenState createState() => _RightScreenState();
}

class _RightScreenState extends State<RightScreen> {
  List<String> names = [
    "messages",
    "dropbox",
    "kugou",
    "skype",
    "macos",
    "phone",
    "messages",
    "phone",
    "messages",
    "phone",
    "messages",
    "phone",
    "messages",
    "phone",
    "messages",
    "phone",
    "messages",
    "phone",
    "messages",
    "phone",
  ];
  FocusNode focusnode = FocusNode();
  bool show = true;
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Mystyle.primarycolo,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.only(left: 32, right: 32, top: 16, bottom: 16),
            child: ListView(
              // dragStartBehavior: , wanna remove that restriction
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PopupMenuButton<int>(
                      offset: Offset(0, 100 + 10.0),
                      onSelected: (int result) {},
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<int>>[
                        PopupMenuItem<int>(
                          value: 1,
                          child: Text("Apps - Default"),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Text("Apps - AZ"),
                        ),
                        PopupMenuItem<int>(
                          value: 3,
                          child: Text("Apps - Recent"),
                        ),
                        PopupMenuItem<int>(
                          value: 4,
                          child: Text("Apps - Date"),
                        ),
                        PopupMenuItem<int>(
                          value: 5,
                          child: Text("Apps - Size"),
                        ),
                      ],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Apps",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/settings');
                      },
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight / 20),
                Column(
                  children: List.generate(20, (index) {
                    return InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 8.0,
                        ),
                        child: ListTile(
                          leading: Container(
                            height: 45,
                            width: 45,
                            child: Image.asset("assets/${names[index]}.png"),
                          ),
                          title: Text(
                            "${names[index]}",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
        floatingActionButton:
            // show          ?
            InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            setState(() {
              show = false;
            });
            FocusScope.of(context).requestFocus(focusnode);
            // search.enterText(text);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 4),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.search,
              size: 32,
              color: Colors.white,
            ),
          ),
        )
        // : Container(
        //     color: Colors.white,
        //     child: Visibility(
        //       visible: !show,
        //       child: TextField(
        //         autofocus: !show,
        //         focusNode: focusnode.,
        //         controller: search,
        //         decoration: InputDecoration(
        //           icon: IconButton(
        //               icon: Icon(Icons.arrow_back),
        //               onPressed: () {
        //                 setState(() {
        //                   show = true;
        //                 });
        //               }),
        //           hintText: "Search",
        //         ),
        //       ),
        //     ),
        // ),
        );
  }
}
