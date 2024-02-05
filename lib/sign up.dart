// ignore_for_file: prefer_const_constructors


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class signup extends StatefulWidget {
   signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  String?email;
  String? confirmPassword; // Add this line
  TextEditingController _confirmPasswordController = TextEditingController(); // Add this line
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
              "Sign up",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 100, 69, 177)),
        body: Form(
          key:formkey ,
          child: SizedBox(
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
                  child: TextFormField(
                    validator: (data){
                          if(data!.isEmpty){
                       return "Field is requird";
                          }
                    },
                    onChanged: (data){
                      email=data;
                    },
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
                  child: TextFormField(
                    validator: (data){
                      if(data!.isEmpty){
                        return "Field is requird";
                      }
                    },
                    onChanged: (data){
                      password=data;
                    },
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
                  child: TextFormField(
                    controller: _confirmPasswordController, // Add this line
                    validator: (data) {
                      if (data!.isEmpty) {
                        return "Field is required";
                      } else if (data != password) {
                        return "Passwords do not match";
                      }
                    },
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
                  onPressed: () async {
                    // Navigator.pushNamed(context,"/autho");
                    if (formkey.currentState!.validate()) {
                      isloading=true;
                      setState(() {

                      });
                      try {
                        await registerUser();
                        showSnakeBar(context, "succeess ");
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
        ),
      ),
    );
  }

  void showSnakeBar(BuildContext context, String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> registerUser() async {
      var auth= FirebaseAuth.instance;
    UserCredential user=  await  auth.createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
