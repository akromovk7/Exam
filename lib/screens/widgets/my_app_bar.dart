import 'package:exam/core/constants/const.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final Color? color;
  final String? image;
  final String? subtitle;
  const MyAppBar({Key? key, this.subtitle, this.title, this.color, this.image})
      : super(key: key);

  @override
  Size get preferredSize => Size(800, 300);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue,
      expandedHeight: 300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(33.0),
          bottomRight: Radius.circular(33.0),
        ),
      ),
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   icon: SvgPicture.asset("assets/icons/arrow-left.svg"),
      //   iconSize: FontsizeConst.LargeSize,
      //   color: ConsColors.Black,
      // ),
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 200, left: 30, right: 35),
            child: Column(
              children: [
                Text(
                  title ?? "",
                  style: TextStyle(
                      color: color ?? ConsColors.white,
                      fontSize: FontsizeConst.LargeSize,
                      fontWeight: FontweightConst.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      toolbarHeight: 300,
      actions: [CircleAvatar(backgroundImage: AssetImage(image!),)],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(33.0),
                bottomRight: Radius.circular(33.0),
              ),
              image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
