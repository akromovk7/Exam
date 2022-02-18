import 'dart:async';
import 'package:exam/core/constants/const.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 1000), () {
      Navigator.pushReplacementNamed(context, '/log_in');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/img.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: PaddingMarginConst.ExtraLargePadding,
                      padding: PaddingMarginConst.SmallPadding,
                      height: ContSize.big,
                      width: ContSize.big,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ConsColors.HomeBack,
                        borderRadius: BorderRadius.all(
                          Radius.circular(RadiusConst.Smallradius),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/home.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: PaddingMarginConst.SmallPadding,
                      child: Text(
                        "Peshot",
                        style: TextStyle(
                            color: ConsColors.Black,
                            fontSize: FontsizeConst.ExtraMegaSize,
                            fontWeight: FontweightConst.bold),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Welcome to peshot",style: TextStyle(fontSize: FontsizeConst.ExtraSmallSize),),
                        Text("Book easy and cheap hotels only on Peshot",style: TextStyle(fontSize: FontsizeConst.ExtraSmallSize),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
