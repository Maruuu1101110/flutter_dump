import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          title: Text("About", style: TextStyle(color: Colors.white)),
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
                          titleText("Experience"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(" - Built an Android LLM Wrapper."),
                                descText(" - Built a Linux Local AI"),
                                descText(" - Built an AI Wrapper Website"),
                                descText(
                                  " - Architectured an entire LLM System",
                                ),
                                descText(
                                  " - Structured a Flask backend for LLM",
                                ),
                                descText(
                                  " - Structured a Flask backend for a Baybayin Website",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Work Experience"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [descText(" - N/A")],
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
