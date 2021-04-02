import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assets/images/tl.png')),
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/images/tr.png')),
              Align(
                  alignment: Alignment(1, 0.85),
                  child: Image.asset('assets/images/br.png')),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sign in',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Welcome back',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          ClipOval(
                            child: Material(
                              child: InkWell(
                                child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset('assets/images/fb.png')),
                                onTap: () {},
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          ClipOval(
                            child: Material(
                              child: InkWell(
                                child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(
                                        'assets/images/google.png')),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                          controller: emailController,
                          hintText: 'Email Address'),
                      CustomTextField(
                          controller: passwordController, hintText: 'Password'),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 36, vertical: 15),
                                primary: Color(0xffebff00)),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.grey),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.95),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Color(0xffebff00),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}