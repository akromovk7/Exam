import 'package:exam/core/constants/const.dart';
import 'package:flutter/material.dart';

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
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.55,
                  color: Colors.blueGrey,
                  child: Image.asset("assets/images/appbarimage.png",
                      fit: BoxFit.cover),
                ),
                Positioned(
                  child: Column(
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
                        child: Text("going next?",style: TextStyle(
                          color: ConsColors.white,
                          fontSize: FontsizeConst.ExtraLargeSize,
                          fontWeight: FontweightConst.bold),),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
