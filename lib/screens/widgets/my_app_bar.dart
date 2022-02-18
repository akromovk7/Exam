import 'package:exam/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final Color? color;
  final String? image;
  const MyAppBar({Key? key, this.title, this.color, this.image})
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
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset("assets/icons/arrow-left.svg"),
        iconSize: FontsizeConst.LargeSize,
        color: ConsColors.Black,
      ),
      elevation: 0,
      title: Text(
        title ?? "",
        style: TextStyle(color: color ?? ConsColors.Black),
      ),
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
