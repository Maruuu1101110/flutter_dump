import 'package:flutter/material.dart';

class AddText extends StatelessWidget {
  const AddText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Welcome to CCS2801 class!",
        style: TextStyle(color: Colors.amber, fontSize: 36),
      ),
    );
  }
}
