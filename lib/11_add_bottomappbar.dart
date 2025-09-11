import 'package:flutter/material.dart';

class AddBottomAppBar extends StatelessWidget {
  const AddBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: Text("Placeholder")),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
      )),
    );
  }
}
