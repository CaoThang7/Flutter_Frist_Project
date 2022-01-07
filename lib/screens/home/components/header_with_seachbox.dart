import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      36), // bo tron goc trai cua view khoang 36
                  bottomRight: Radius.circular(
                      36), // bo tron goc phai cua view khoang 36
                )),
            child: Row(
              children: <Widget>[
                Text("Xin chào! Beny",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                Spacer(),
                Image.asset("assets/images/logoandroid.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                // cho view search margin horizontal and padding horizontal khoang 20
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(20), // bo tron khoang 20
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23), // làm mờ
                      )
                    ]),

                // Widget input va icon search nam tren mot cot (nam ngang)
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Tìm kiếm",
                          hintStyle:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          enabledBorder: InputBorder
                              .none, // ẩn thanh ngang trong text input
                          focusedBorder: InputBorder.none,
                          // suffixIcon: SvgPicture.asset("assets/icons/search.svg", ),
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/search.svg",
                    ), // icon search
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
