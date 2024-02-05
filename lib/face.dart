
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FaceRecogenation extends StatelessWidget {
  const FaceRecogenation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Face Recogintion"),
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 26),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Image.asset('assets/images/facee.jpg'),
                  SizedBox(
                    height: 50,
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: const Color.fromARGB(255, 187, 186, 182),
                  //     borderRadius: BorderRadius.circular(66),
                  //   ),
                  //   width: 266,
                  //   padding: const EdgeInsets.symmetric(horizontal: 16),
                  //   child: TextField(
                  //
                  //     decoration: const InputDecoration(
                  //       hintText: "Take authorization",
                  //
                  //       border: InputBorder.none,
                  //     ),
                  //   ),
                  // ),
               ElevatedButton(onPressed:() {}, child: Text("Take authorithation",
                 style: TextStyle(color: Colors.grey),))  ,
                  SizedBox(
                    height: 50,
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: const Color.fromARGB(255, 187, 186, 182),
                  //     borderRadius: BorderRadius.circular(66),
                  //   ),
                  //   width: 266,
                  //   padding: const EdgeInsets.symmetric(horizontal: 16),
                  //   child: TextField(
                  //
                  //     decoration: const InputDecoration(
                  //       hintText: "Take a picture",
                  //
                  //       border: InputBorder.none,
                  //     ),
                  //   ),
                  //
                  // ),
                  ElevatedButton(onPressed:() {}, child: Text("Take a picture",
                    style: TextStyle(color: Colors.grey),))  ,
                  SizedBox(
                   height: 50,
                 ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context,  '/qrpage');
                  //   },
                  //   style: ButtonStyle(
                  //     backgroundColor: MaterialStateProperty.all(
                  //         Color.fromARGB(255, 90, 118, 174)),
                  //     padding: MaterialStateProperty.all(
                  //         EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                  //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(27))),
                  //   ),
                  //
                  //   child: Text(
                  //     "qr",
                  //     style: TextStyle(fontSize: 24),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
