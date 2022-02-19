import 'package:exam/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.blueGrey,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image.asset("assets/images/image 3.png",
                        fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 40.0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/arrow-left.svg"),
                      iconSize: FontsizeConst.LargeSize,
                      color: ConsColors.Black,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_sharp,
                        color: ConsColors.EButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Mandarin",
                style: TextStyle(
                    color: ConsColors.Black,
                    fontSize: FontsizeConst.ExtraLargeSize,
                    fontWeight: FontweightConst.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Oriental",
                    style: TextStyle(
                        color: ConsColors.Black,
                        fontSize: FontsizeConst.ExtraLargeSize,
                        fontWeight: FontweightConst.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(right: 30),
                  child: Text(
                    "\$ 449",
                    style: TextStyle(
                        color: ConsColors.Black,
                        fontSize: FontsizeConst.ExtraLargeSize,
                        fontWeight: FontweightConst.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Khwaeng Bang Rak,Bangkok 10500,Thailand",
                    style: TextStyle(
                        color: ConsColors.Black,
                        fontSize: FontsizeConst.SmallMiniSize,
                        fontWeight: FontweightConst.normal),
                  ),
                ),
                Icon(
                  Icons.place,
                  color: ConsColors.EButton,
                  size: 10,
                ),
                Text(
                  "(759mm) 48 Oriental Ave",
                  style: TextStyle(
                      color: ConsColors.Black,
                      fontSize: FontsizeConst.SmallMiniSize,
                      fontWeight: FontweightConst.normal),
                ),
                Text(
                  "Per Night",
                  style: TextStyle(
                      color: ConsColors.Black,
                      fontSize: FontsizeConst.SmallTenSize,
                      fontWeight: FontweightConst.normal),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 31, top: 51),
              child: Text(
                "Hotel details",
                style: TextStyle(
                    color: ConsColors.Hdetails,
                    fontSize: FontsizeConst.MediumsixSize,
                    fontWeight: FontweightConst.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 31),
              child: Text(
                "This luxury and well-known hotel overlooking the Chao Phraya river is a 3-minute walk from the nearest ferry stop",
                style: TextStyle(
                    color: ConsColors.Black,
                    fontSize: FontsizeConst.ExtraSmallSize,
                    fontWeight: FontweightConst.normal),
              ),
            ),
            Container(
              width: 354,
              height: 156,
              margin: EdgeInsets.only(
                left: 30,
                top: 44,
                right: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Image.asset(
                "assets/images/rating.png",
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30, top: 30),
                  child: Text(
                    "Hotel details",
                    style: TextStyle(
                        color: ConsColors.Hdetails,
                        fontSize: FontsizeConst.MediumsixSize,
                        fontWeight: FontweightConst.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30, top: 30),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(
                          fontSize: FontsizeConst.ExtraSmallSize,
                          color: ConsColors.EButton),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
