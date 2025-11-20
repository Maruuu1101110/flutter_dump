import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  Widget titleText(String text) {
    return Text(text, style: TextStyle(color: Colors.blueGrey, fontSize: 34));
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
          title: Text("Project", style: TextStyle(color: Colors.white)),
        ),
        body: SafeArea(
          child: Center(
            child: Stack(
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
                          Text(
                            "Projects",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          titleText("Study Forge"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(" - An AI integrated study app."),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Ember AI"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(
                                  " - Own copy of ChatGPT using Flutter and Flask backend.",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Project L.U.N.A"),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText(
                                  " - Linux User Native Assistant; my own personal desktop AI powered by LLMs hosted in Digital Ocean. It can execute terminal commands and give suggestions for scripting and coding.",
                                ),
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
