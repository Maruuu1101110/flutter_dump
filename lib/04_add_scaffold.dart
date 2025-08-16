import 'package:flutter/material.dart';

class AddScaffold extends StatelessWidget {
  const AddScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("App Bar"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: const Text(
              textAlign: TextAlign.center,
              "Welcome to CCS 2801 Class!",
              style: TextStyle(fontSize: 10, color: Colors.green),
            ),
          ),
        ),
      ),
    );
  }
}
