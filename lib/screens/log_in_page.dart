import 'package:exam/core/constants/const.dart';
import 'package:exam/models/userdata.dart';
import 'package:exam/models/usermodel.dart';
import 'package:flutter/material.dart';

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
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 55),
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: FontsizeConst.ExtraLargeSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Fill your details or continue",
                    style: TextStyle(
                        fontSize: FontsizeConst.MediumSize, color: Colors.grey),
                  ),
                  Text(
                    "with social media",
                    style: TextStyle(
                        fontSize: FontsizeConst.MediumSize, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            cursorColor: Colors.blue,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.blue,
                              ),
                              hintText: "Email",
                              labelText: "Email Address",
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              labelStyle: TextStyle(color: Colors.blue),
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
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.blue,
                              obscureText: _isSecured,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock_outlined,
                                  color: Colors.blue,
                                ),
                                suffix: IconButton(
                                  splashRadius: 20,
                                  icon: Icon(Icons.remove_red_eye_outlined,
                                      color: Colors.blue),
                                  onPressed: () {
                                    setState(() {
                                      _isSecured = !_isSecured;
                                    });
                                  },
                                ),
                                hintText: "Password",
                                labelText: "Password",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                                labelStyle: TextStyle(color: Colors.blue),
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
                            child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.black,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(
                                    fontSize: FontsizeConst.SmallSize,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  fixedSize: const Size(350, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String email = _emailController.text.trim().toLowerCase();
                  String password = _passwordController.text.trim();

                  for (var i = 0; i < Userdata.users.length; i++) {
                    if (Userdata.users[i].email == email && Userdata.users[i].password == password) {
                      Userdata.currentUser = Userdata.users[i];
                      Navigator.pushReplacementNamed(context, '/home',arguments: Userdata.users[i].name);
                    }
                  }
                }
              },
              child: Text(
                "LOG IN",
                style: TextStyle(
                    fontSize: FontsizeConst.MediumSize, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.2,
                      indent: 5,
                      endIndent: 25,
                    ),
                  ),
                  Text(
                    "Or Continue with",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey, fontSize: FontsizeConst.MediumSize),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.2,
                      indent: 25,
                      endIndent: 5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.grey,
                    elevation: 4,
                    borderRadius: BorderRadius.circular(16.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxVWmpRyTWPc11WH7eaS2SFtyvIsVKOLIrHg&usqp=CAU'),
                        height: 55.0,
                        width: 55.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 25),
                  Material(
                    color: Colors.grey,
                    elevation: 4,
                    borderRadius: BorderRadius.circular(16.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqaGh3BTgzqBRBK0bqeFw4WEje75q30nJO7A&usqp=CAU'),
                        height: 55.0,
                        width: 55.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New User?",
                  style: TextStyle(
                      fontSize: FontsizeConst.MediumSize, color: Colors.grey),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {Navigator.pushNamed(context, '/sign_up');},
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: FontsizeConst.MediumSize, color: Colors.black),
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
