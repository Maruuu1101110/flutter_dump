import 'package:flutter/material.dart';

class AddNavigationAppBar1 extends StatelessWidget {
  const AddNavigationAppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
          child: Text("Placeholder"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School")
        ],
      ),
    );
  }
}
