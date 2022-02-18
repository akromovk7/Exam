import 'dart:ui';

import 'package:exam/core/constants/const.dart';
import 'package:exam/models/userdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isSecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: PaddingMarginConst.Simmetric,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_up');
                    },
                    icon: SvgPicture.asset("assets/icons/Arrow_left_long.svg"),
                    iconSize: FontsizeConst.LargeSize,
                    color: ConsColors.Black,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 33, bottom: 31),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: FontsizeConst.ExtraLargeSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          color: ConsColors.white,
                          elevation: 4,
                          borderRadius: BorderRadius.circular(30.0),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxVWmpRyTWPc11WH7eaS2SFtyvIsVKOLIrHg&usqp=CAU'),
                                  height: 50.0,
                                  width: 50.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Google",
                                  style: TextStyle(
                                      color: ConsColors.Black,
                                      fontSize: FontsizeConst.SmallSize,
                                      fontWeight: FontweightConst.bold),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 25),
                        Material(
                          color: ConsColors.Facebook,
                          elevation: 4,
                          borderRadius: BorderRadius.circular(30.0),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ-RKHC2HkOCe8-KNgEULVTCsZxKbrQzdFHGMacmaZTK7hgcypuUcrd99UQj6gfr_P_04&usqp=CAU'),
                                  height: 50.0,
                                  width: 50.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(
                                      color: ConsColors.white,
                                      fontSize: FontsizeConst.SmallSize,
                                      fontWeight: FontweightConst.bold),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 37.0),
                    child: Text(
                      "Or log in using",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ConsColors.Black,
                          fontSize: FontsizeConst.MediumSize,
                          fontWeight: FontweightConst.w5),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          cursorColor: ConsColors.EButton,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            hintText: "Email",
                            labelText: "Email Address",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide(color: ConsColors.EButton),
                            ),
                            labelStyle: TextStyle(color: Colors.grey),
                          ),
                          validator: (email) {
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(email!)) {
                              return "Email error";
                            }
                          },
                        ),
                        SizedBox(height: 25.0),
                        SizedBox(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            cursorColor: Colors.blue,
                            obscureText: _isSecured,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              suffixIcon: IconButton(
                                splashRadius: 20,
                                icon: Icon(Icons.remove_red_eye_outlined,
                                    color: ConsColors.EButton),
                                onPressed: () {
                                  setState(() {
                                    _isSecured = !_isSecured;
                                  });
                                },
                              ),
                              hintText: "Password",
                              labelText: "Password",
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide:
                                    BorderSide(color: ConsColors.EButton),
                              ),
                              labelStyle: TextStyle(color: Colors.grey),
                            ),
                            validator: (password) {
                              if (!RegExp(
                                      r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$")
                                  .hasMatch(password!)) {
                                return "Password error";
                              }
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(bottom: 25),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                  fontSize: FontsizeConst.SmallSize,
                                  color: ConsColors.Black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ConsColors.EButton,
                  fixedSize: const Size(325, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String email = _emailController.text.trim().toLowerCase();
                  String password = _passwordController.text.trim();

                  for (var i = 0; i < Userdata.users.length; i++) {
                    if (Userdata.users[i].email == email &&
                        Userdata.users[i].password == password) {
                      Userdata.currentUser = Userdata.users[i];
                      Navigator.pushReplacementNamed(context, '/home',
                          arguments: Userdata.users[i].name);
                    }
                  }
                }
              },
              child: Text(
                "Log in",
                style: TextStyle(
                    fontSize: FontsizeConst.SmallSize, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                        fontSize: FontsizeConst.SmallSize, color: ConsColors.Black),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_up');
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: FontsizeConst.SmallSize,
                          color: ConsColors.EButton),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
