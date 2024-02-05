// ignore_for_file: prefer_const_constructors



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:untitled9/qr.dart';

class login extends StatefulWidget {
   login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
String?email;
String?password;
   bool isloading=false;

   GlobalKey<FormState> formkey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(

      inAsyncCall: isloading,

      child: Scaffold(

          appBar: AppBar(
            title: Text(
              "Log in",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 134, 170, 206),
          ),
          body: Form(
            key: formkey,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 2,
                  ),
                  // Positioned(
                  //   left: 0,
                  //   child: Image.asset(
                  //     "assets/images/4345984.webp",
                  //     width: 250,
                  //   ),
                  // ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 220, 214, 214),
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      onChanged: (data){
                        email=data;
                      },
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 147, 143, 143),
                          ),
                          hintText: "Your Email :",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 217, 213, 218),
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      onChanged: (data){
                        password=data;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          suffix: Icon(
                            Icons.visibility,
                            color: const Color.fromARGB(255, 220, 214, 214),
                          ),
                          icon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 148, 148, 150),
                            size: 19,
                          ),
                          hintText: "Password :",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  ElevatedButton(
                    onPressed: () async {

                      if (formkey.currentState!.validate()) {
                        isloading=true;
                        setState(() {

                        });
                        try {
                          await loginUser();
                          Navigator.pushNamed(context,  "/autho");
                          Navigator.pushNamed(context,"/autho");
                        }on FirebaseAuthException  catch (e) {
                          if (e.code == 'weak-password') {
                            showSnakeBar(context, "weak password");
                          } else if (e.code == 'email-already-in-use') {
                            showSnakeBar(context, "email already-in-use ");
                          }

                        }
                        catch(e){
                          showSnakeBar(context, "there is an error ");
                        }
                        isloading=false;
                        setState(() {

                        });

                      }
                      else{

                      }

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 90, 118, 174)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),

                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

void showSnakeBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

Future<void> loginUser() async {
  var auth= FirebaseAuth.instance;
  UserCredential user=  await  auth.signInWithEmailAndPassword(email: email!, password: password!);
}


}
