import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix_app/Screens/sign_in_screen.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool isObsecure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void passwordFieldVisible() {
      setState(() {
        isObsecure = !isObsecure;
      });
    }

    vadlidateForm() {
      if (_formKey.currentState!.validate()) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const SignInScreen()));
      } else {
        return false;
      }
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Create new password',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Your new password must be different from previous used password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
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
                          child: TextFormField(
                            obscureText: isObsecure,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Confirm Password",
                              prefixIcon: Icon(CupertinoIcons.lock),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Confirm Password can't be empty";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              vadlidateForm();
                            },
                            child: const Text('Change Password'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
