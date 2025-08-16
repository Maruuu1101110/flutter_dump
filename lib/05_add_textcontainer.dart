import 'package:flutter/material.dart';

class AddTextContainer extends StatelessWidget {
  const AddTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.white,
            child: const Text(
              "Welcome to CCS2801 class!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
