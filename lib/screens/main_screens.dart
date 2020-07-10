import 'package:flutter/material.dart';
import 'package:launcher/screens/left_screen.dart';
import 'package:launcher/screens/left_screen_access.dart';
import 'package:launcher/screens/left_screen_first.dart';
import 'package:launcher/screens/middle_screen.dart';
import 'package:launcher/screens/right_screen.dart';
import 'package:launcher/utils/size_config.dart';

class MainScreen extends StatefulWidget {
  static const int _totalPages = 3;
  int pagenum = 1;
  MainScreen({this.pagenum});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController controller = PageController(initialPage: 1);

  int _pageNum = 1;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: widget.pagenum ?? 1);
  }

  List _pageIndicator() {
    List<Widget> indicator = List();
    for (int i = 0; i < MainScreen._totalPages; i++) {
      indicator.add(i == _pageNum ? _indicator(true) : _indicator(false));
    }
    return indicator;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : Colors.white.withOpacity(.5),
      ),
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.paddingHorizontal),
      height: 16.0,
      width: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF000843),
      body: Stack(
        children: <Widget>[
          PageView(
            controller: controller,
            onPageChanged: (int page) {
              setState(() {
                _pageNum = page;
              });
            },
            children: <Widget>[
              LeftScreen(),
              MiddleScreen(),
              RightScreen(),
            ],
          ),
          // Positioned(
          //   bottom: 10,
          //   left: 0,
          //   right: 0,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: _pageIndicator(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
