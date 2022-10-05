// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/tasks.dart';

class ToDoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 58, 106),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 10, 95, 169),
        onPressed: () {
          showModalBottomSheet(
            // isScrollControlled: true,

            //Popup in fultter
            context: context,
            builder: (context) => Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "ADD TASK",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ADD TASK', //مايختفي لما اجي اكتب يرقى فوق
                      prefixIcon: const Icon(Icons.playlist_add_check),
                    ),
                    onFieldSubmitted: (value) =>
                        print(value), // يمسك القيمه الي راح يدخلها اليوزر
                    //onChanged: (value) => print(value),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 10, 95, 169),
                    child: MaterialButton(
                      onPressed: () {
                        print("add");
                      },
                      child: Text("Add", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        child: Icon(Icons.add_task),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 50, top: 80, right: 30, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.playlist_add_check,
                  size: 45,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ToDoApp",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '4 Tasks',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Tasks(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
