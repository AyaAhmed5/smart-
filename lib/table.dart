
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor:Color(0xff015798),
      appBar: AppBar(title: Text("Summary"),),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/back.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Column(
                children: [
                  Text("Summary",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70,fontSize: 60),),
                  SizedBox(
                    height: 20,
                  ),
                  Table(
                      border: TableBorder.all(),

                      children: [
                  TableRow(
                  children: [
                  TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Center(
                        child: Text('Course',style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.white70,fontSize: 20)),
                  ),
                  ),
    ),
    TableCell(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                  child: Text('Date',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70
                      ,fontSize: 20),),
                  ),
    ),
    ),
    TableCell(
    child: Center(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text('Attendance',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70
                      ,fontSize: 20),),
    ),
    ),
    ),
    ],
    ),
    TableRow(
    children: [
    TableCell(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                  child: Text('Data Mining',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
    ),
    ),
    TableCell(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                  child: Text('10/5/2024',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
    ),
    ),
    TableCell(
    child: Center(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text('Yes',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
    ),
    ),
    ),
    ],
    ),
    TableRow(
    children: [
    TableCell(
    child: Center(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text('C++',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
    ),
    ),
    ),
    TableCell(
    child: Center(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text('23/9/2024',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
    ),
    ),
    ),
    TableCell(
    child: Center(
    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text('No',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
    ),
    ),
    ),
    ],
    ),
    ],
    ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
  }

