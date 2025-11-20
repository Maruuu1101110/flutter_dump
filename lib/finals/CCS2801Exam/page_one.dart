import 'package:flutter/material.dart';
import 'package:playground_flutter/finals/CCS2801Exam/aboutme_page.dart';
import 'package:playground_flutter/finals/CCS2801Exam/contact_page.dart';
import 'package:playground_flutter/finals/CCS2801Exam/project_page.dart';
import 'package:playground_flutter/finals/CCS2801Exam/stack_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Widget createContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 8)],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Explore my Skills!",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(endIndent: 50, indent: 50, thickness: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createButtons(Icons.developer_board, "Stack", StackPage()),
                createButtons(Icons.code, "Projects", ProjectPage()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createButtons(Icons.person, "About Me", AboutPage()),

                createButtons(Icons.contact_mail, "Contact", ContactPage()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget createButtons(IconData icon, String label, pagePath) {
    return InkWell(
      splashColor: Colors.black,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pagePath),
        );
      },
      onHover: (value) {},
      child: AnimatedContainer(
        padding: EdgeInsets.all(10),
        duration: Duration(milliseconds: 300),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue.shade400,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Colors.blue.shade300),
          boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 8)],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 60, color: Colors.white70),
            SizedBox(height: 10),
            Text(label, style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 10),
            Divider(
              thickness: 5,
              color: Colors.white30,
              radius: BorderRadius.circular(12),
              indent: 28,
              endIndent: 28,
            ),
          ],
        ),
      ),
    );
  }

  Widget createDescription() {
    return Column(
      children: [
        Text(
          "Hey there!",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 75,
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "I'm EJ Rosialda, a Mobile App developer.",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontFamily: 'Arial',
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: 'Arial'),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Home", style: TextStyle(color: Colors.white)),
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
                  top: 150,
                  left: 10,
                  right: 10,
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(12),
                    child: createDescription(),
                  ),
                ),
                Positioned(
                  right: 100,
                  left: 100,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 5, color: Colors.white),
                      image: DecorationImage(
                        image: AssetImage('assets/image.jpg'),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: AlignmentGeometry.bottomCenter,
                  child: createContainer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
