import 'package:exam/models/userdata.dart';
import 'package:exam/screens/widgets/my_app_bar.dart';
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
      body: CustomScrollView(
        slivers: [
          MyAppBar(
            title: ("Hello ${Userdata.currentUser.name}"),
            image: 'assets/images/appbarimage.png',
          ),
        ],
      ),
    );
  }
}
