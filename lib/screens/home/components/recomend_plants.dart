import 'package:flutter/material.dart';
import 'package:flutter_first_project/screens/details/details_screen.dart';
import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Chậu sen đá",
            country: "Việt Nam",
            price: 500,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Chậu kiểng",
            country: "Việt Nam",
            price: 400,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Cây phát tài",
            country: "Việt Nam",
            price: 1000,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.green.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: Colors.green.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\ $price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.green),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
