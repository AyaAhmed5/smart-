// ignore_for_file: prefer_const_constructors


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Sign up",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "myfont",
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 100, 69, 177)),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 214, 214),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 226, 185, 185),
                    ),
                    hintText: "Username : ",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 214, 214),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 102, 95, 104),
                    ),
                    hintText: "Your Email :",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 214, 214),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffix: Icon(
                      Icons.visibility,
                      color: const Color.fromARGB(255, 206, 200, 212),
                    ),
                    icon: Icon(
                      Icons.lock,
                      color: const Color.fromARGB(255, 128, 125, 130),
                      size: 19,
                    ),
                    hintText: "Password :",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 220, 214, 214),
                borderRadius: BorderRadius.circular(66),
              ),
              width: 266,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffix: Icon(
                      Icons.visibility,
                      color: const Color.fromARGB(255, 206, 200, 212),
                    ),
                    icon: Icon(
                      Icons.lock,
                      color: const Color.fromARGB(255, 128, 125, 130),
                      size: 19,
                    ),
                    hintText: " confirm Password :",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,"/autho");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 39, 110, 176)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 91, vertical: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27))),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
