import 'package:flutter/material.dart';
import 'package:training_and_placement_project/screen/signup.dart';

import '../routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool buttonname = false;

  final _keyForm = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_keyForm.currentState!.validate()) {
      setState(() {
        buttonname = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Routes.homeroutes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Form(
                  key: _keyForm,
                  child: Column(
                    children: [
                      // Image.asset("assets/undraw_breakfast_psiw.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "WELCOME $name",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "Enter Your mobile number",
                            labelText: "mobile number"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "password cannot be empty";
                          } else if (value.length < 6) {
                            return "password should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          child: buttonname
                              ? Icon(Icons.done)
                              : Text("LOGIN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16)),
                          decoration: BoxDecoration(
                            shape: buttonname
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            color: Colors.deepPurple,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => SignUp())));
                  },
                  child: Text('Sign up')),
            ],
          ),
        ),
      ),
    );
  }
}
