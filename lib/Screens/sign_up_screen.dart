import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObsecure = true;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void passwordFieldVisible() {
      setState(() {
        isObsecure = !isObsecure;
      });
    }

    validateForm() {
      if (_formkey.currentState!.validate()) {
        return false;
      } else {
        return true;
      }
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Text(
                      'Create new account',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'fill this form to register an account',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 2.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Full Name",
                            prefixIcon: Icon(CupertinoIcons.mail),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Full Name can't be empty";
                            } else if (value.length < 6) {
                              return "Minimum 6 characters required";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Email Address",
                            prefixIcon: Icon(CupertinoIcons.mail),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email Address can't be empty";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      TextFormField(
                        obscureText: isObsecure,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Password",
                          prefixIcon: const Icon(CupertinoIcons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              passwordFieldVisible();
                            },
                            icon: Icon(
                              isObsecure
                                  ? CupertinoIcons.eye_slash
                                  : CupertinoIcons.eye,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              validateForm();
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                        letterSpacing: 1.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignInScreen()));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
