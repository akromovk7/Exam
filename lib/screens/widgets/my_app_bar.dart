import 'package:exam/core/constants/const.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String? title;
  final Color? color;
  const MyAppBar({Key? key, this.title, this.color}) : super(key: key);

  @override
  // Size get preferredSize => Size(800, double.infinity);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 80,
      backgroundColor: Colors.blue,
      elevation: 0,
      title: Text(
        title ?? "",
        style: TextStyle(color: color ?? ConsColors.Black),
      ),
    );
  }
}
