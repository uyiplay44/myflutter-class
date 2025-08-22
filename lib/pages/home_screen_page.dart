import 'package:flutter/material.dart';
import 'package:mycustom_project/pages/signin_page.dart';
import 'package:mycustom_project/pages/signup_page.dart';

class HomeDisplay extends StatefulWidget {
  const HomeDisplay({super.key});

  @override
  State<HomeDisplay> createState() => _HomeDisplayState();
}

class _HomeDisplayState extends State<HomeDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.blueAccent,
                Colors.green,
                Colors.black,
              ],
              begin: Alignment(1, -7),
              end: AlignmentGeometry.directional(-1, 1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(child: Image.asset('lib/image/homescreen.png')),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Your Ultimate Solution Finance for Success',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Take control of your financial future with personalized insights.',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 50,
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 37,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 50),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 37,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                              ),
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
        ),
      ),
    );
  }
}
