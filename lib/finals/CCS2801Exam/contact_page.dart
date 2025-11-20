import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Widget titleText(String text, IconData icondata) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icondata, color: Colors.grey, size: 35),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
          title: Text("Contact Me", style: TextStyle(color: Colors.white)),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          titleText("Email", Icons.mail),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                descText("ejrosialda@gmail.com"),
                                descText("elijahmar.rosialda-23@gmail.com"),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Facebook", Icons.facebook),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descText("Elijah Mar Pascual Rosialda"),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          titleText("Github", Icons.smart_toy_outlined),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [descText("Maruuu1101110")],
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
