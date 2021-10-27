import 'package:flutter/material.dart';

class NewBatchScreen extends StatefulWidget {
  const NewBatchScreen({Key? key}) : super(key: key);

  @override
  _NewBatchScreenState createState() => _NewBatchScreenState();
}

Widget textData(String label, String text) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 30,
          width: 100,
          child: Text(
            label,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ],
    ),
  );
}

class _NewBatchScreenState extends State<NewBatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Text("New Batch"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 150),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(18),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      side: BorderSide(width: 5, color: Colors.white)),
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.24,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "Batch name",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.date_range),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "12-05-21",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "To",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.date_range),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "12-05-21",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.watch_later_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "02:00 PM - 03:00 PM (1 Hours)",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: const [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/profile.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "James Jackson",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
