import 'package:flutter/material.dart';

import 'new_batch_screen.dart';

class BatchManagementScreen extends StatefulWidget {
  const BatchManagementScreen({Key? key}) : super(key: key);

  @override
  _BatchManagementScreenState createState() => _BatchManagementScreenState();
}

class _BatchManagementScreenState extends State<BatchManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Batch Management"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(height: 3, color: Colors.black),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  child: Text(
                    "J",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                title: const Text(
                  "James Jackson",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "12:30 pm      24 June 21",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewBatchScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "View",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
