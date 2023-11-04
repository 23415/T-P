import 'package:flutter/material.dart';
import 'package:training_and_placement_project/screen/loginscreen.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Image.asset("assets/signup.png", width: 370, height: 350),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Full Name', labelText: 'Enter your name'),
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: '1AM20CS900', labelText: 'Enter your USN'),
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: '90454589025',
                    labelText: 'Enter your Mobile number'),
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'example@mail.com',
                    labelText: 'Enter your email'),
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your password', labelText: 'password'),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => LoginScreen())));
                  },
                  child: Text('SIGN UP'))
            ],
          ),
        ),
      ),
    );
  }
}
