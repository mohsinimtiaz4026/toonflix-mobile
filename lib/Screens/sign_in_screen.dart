import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/home_screen.dart';
import 'package:toonflix_app/Screens/sign_up_screen.dart';
import 'package:toonflix_app/Screens/forget_password.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObsecure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void passwordFieldVisible() {
      setState(() {
        isObsecure = !isObsecure;
      });
    }

    validateForm() {
      if (_formKey.currentState!.validate()) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      } else {
        return false;
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
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 2.0,
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const ForgetPassword()));
                            },
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
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
                              'Login',
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
                      'Are you a new User? ',
                      style: TextStyle(
                        letterSpacing: 1.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignUpScreen()));
                      },
                      child: const Text(
                        'Register',
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
