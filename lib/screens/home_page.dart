import 'package:exam/core/constants/const.dart';
import 'package:exam/models/deals.dart';
import 'package:exam/models/info.dart';
import 'package:exam/models/popular.dart';
import 'package:exam/models/userdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  final String? data;
  const MyHomePage({Key? key, this.data}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    color: Colors.blueGrey,
                    child: Stack(
                      children: [
                        Image.asset("assets/images/appbarimage.png",
                            fit: BoxFit.cover),
                        Positioned(
                          bottom: 0,
                          child: Image.asset("assets/images/effect.png",
                              fit: BoxFit.cover),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 260, left: 30),
                                  child: Text(
                                    "Where are you",
                                    style: TextStyle(
                                        color: ConsColors.white,
                                        fontSize: FontsizeConst.ExtraLargeSize,
                                        fontWeight: FontweightConst.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Text(
                                    "going next?",
                                    style: TextStyle(
                                        color: ConsColors.white,
                                        fontSize: FontsizeConst.ExtraLargeSize,
                                        fontWeight: FontweightConst.bold),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 28, top: 56),
                              child: CircleAvatar(
                                radius: 21.5,
                                backgroundImage:
                                    AssetImage("assets/images/avatar.png"),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 354,
                          height: 210,
                          margin: EdgeInsets.only(
                            left: 30,
                            top: 17,
                            right: 30,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                              color: ConsColors.white.withOpacity(0.8)),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 11,
                                ),
                                margin: EdgeInsets.only(
                                  left: 11,
                                  top: 12,
                                  right: 15,
                                ),
                                width: 328,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                    color: Colors.white),
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/search.svg"),
                                    Container(
                                      margin: EdgeInsets.only(left: 13),
                                      child: Text(
                                        "Search",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 11, top: 19, right: 66),
                                        child: Text(
                                          "Flight Date",
                                          style: TextStyle(
                                              color: ConsColors.Black,
                                              fontWeight:
                                                  FontweightConst.normal,
                                              fontSize: 14),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 11, top: 10),
                                        child: Text(
                                          "13 Jul - 18 Jul",
                                          style: TextStyle(
                                              color: ConsColors.Black,
                                              fontWeight:
                                                  FontweightConst.normal,
                                              fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  SvgPicture.asset("assets/icons/divider.svg"),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 11, top: 19),
                                        child: Text(
                                          "Number of Person",
                                          style: TextStyle(
                                              color: ConsColors.Black,
                                              fontWeight:
                                                  FontweightConst.normal,
                                              fontSize: 14),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Text(
                                          "1 Room - 2 Person",
                                          style: TextStyle(
                                              color: ConsColors.Black,
                                              fontWeight:
                                                  FontweightConst.normal,
                                              fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 11, top: 18, right: 15, bottom: 15),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: ConsColors.EButton,
                                      fixedSize: const Size(325, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)))),
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                      context,
                                      '/home',
                                    );
                                  },
                                  child: Text(
                                    "Today's Promo",
                                    style: TextStyle(
                                        fontSize: FontsizeConst.SmallMediumSize,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 30,
                top: 20,
                bottom: 33,
              ),
              child: Text(
                "Recommended List",
                style: TextStyle(
                    fontSize: FontsizeConst.MediumSize,
                    fontWeight: FontweightConst.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 22.0, bottom: 26.0),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView.builder(
                itemCount: info.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 155.0,
                    height: 188.0,
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image(
                          image: info[index]["img"],
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 134,
                          left: 9,
                          child: Column(
                            children: [
                              Text(
                                info[index]["text1"],
                                style: TextStyle(
                                    fontSize: FontsizeConst.SmallMediumSize,
                                    fontWeight: FontweightConst.bold),
                              ),
                              Text(
                                info[index]["text2"],
                                style: TextStyle(
                                    fontSize: FontsizeConst.ExtraSmallSize,
                                    fontWeight: FontweightConst.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 30,
                bottom: 33,
              ),
              child: Text(
                "Popular Destination",
                style: TextStyle(
                    fontSize: FontsizeConst.MediumSize,
                    fontWeight: FontweightConst.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0),
              width: MediaQuery.of(context).size.width,
              height: 188,
              child: ListView.builder(
                itemCount: popular.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 291.0,
                    height: 188.0,
                    margin: EdgeInsets.symmetric(horizontal: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image(
                          image: popular[index]["img"],
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 18,
                          left: 11,
                          child: Column(
                            children: [
                              Text(
                                popular[index]["text1"],
                                style: TextStyle(
                                    color: ConsColors.white,
                                    fontSize: FontsizeConst.MediumLargeSize,
                                    fontWeight: FontweightConst.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 30, top: 38),
              child: Text(
                "Best Deals",
                style: TextStyle(
                    fontSize: FontsizeConst.MediiumSize,
                    fontWeight: FontweightConst.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.0),
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: ListView.builder(physics: NeverScrollableScrollPhysics(),
                itemCount: deals.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    width: 354.0,
                    height: 134.0,
                    margin: EdgeInsets.only(left: 6.0,bottom: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image(
                          image: deals[index]["img"],
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 6,
                          left: 134,
                          bottom: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                deals[index]["text1"],
                                style: TextStyle(
                                    color: ConsColors.Black,
                                    fontSize: FontsizeConst.SmallSize,
                                    fontWeight: FontweightConst.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5.0, bottom: 56),
                                child: Text(
                                  deals[index]["text2"],
                                  style: TextStyle(
                                      color: ConsColors.Black,
                                      fontSize: FontsizeConst.SmallMiniSize,
                                      fontWeight: FontweightConst.normal),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                  Text(
                                    deals[index]["text3"],
                                    style: TextStyle(
                                        color: ConsColors.Black,
                                        fontSize: FontsizeConst.SmallMiniSize,
                                        fontWeight: FontweightConst.normal),
                                  ),
                                  Text(
                                    deals[index]["text4"],
                                    style: TextStyle(
                                        color: ConsColors.Black,
                                        fontSize: FontsizeConst.SmallSize,
                                        fontWeight: FontweightConst.w6),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: ConsColors.EButton,
                                    size: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
