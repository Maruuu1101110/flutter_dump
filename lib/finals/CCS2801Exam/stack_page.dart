import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  Widget titleText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 34,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget descText(String text) {
    return Text(text, style: TextStyle(color: Colors.blueGrey, fontSize: 18));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: 'Arial'),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          foregroundColor: Colors.white,
          title: Text("Stack", style: TextStyle(color: Colors.white)),
        ),
        body: SafeArea(
          child: Center(
            child: Stack(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.bottomCenter,
                      end: AlignmentGeometry.topCenter,
                      colors: [Colors.blueAccent, Colors.white, Colors.white],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          titleText("Flutter"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(" - Widget expertise."),
                                descText(" - Simple Routing."),
                                descText(" - Advanced Routing."),
                                descText(" - API Integrations."),
                                descText(" - Backend Integrations."),
                                descText(" - Package Knowledge."),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Flask"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(" - Average Routing knowledge."),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Python"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(" - Fundamentals."),
                                descText(" - OOP knowledge."),
                                descText(
                                  " - Wide knowledge in Python Libraries.",
                                ),
                                descText(" - System Processes."),
                                descText(" - Wide scope on python methods."),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Dart"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(" - Advance Fundamentals."),
                                descText(" - Avg async skills."),
                                descText(" - HTTP/REST integrations."),
                                descText(" - Advance Logical skills."),
                              ],
                            ),
                          ),
                        ],
                      ),
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
