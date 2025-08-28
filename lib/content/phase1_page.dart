// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome To Login'),
              SizedBox(height: 20),
              Center(child: Container(child: Text('Hello World'))),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      fillColor: Colors.white,
                      labelText: 'Enter Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.5),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      fillColor: Colors.amber,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.5),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  print('I Clicked You');
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    decorationThickness: 20,
                  ),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.red,
                  fixedSize: Size(500, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
