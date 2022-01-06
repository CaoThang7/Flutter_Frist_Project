import 'package:flutter/material.dart';
import 'package:flutter_first_project/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'header_with_seachbox.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
        ],
      ),
    );
  }
}

