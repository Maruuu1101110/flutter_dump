import 'package:flutter/material.dart';

class AddColumn extends StatelessWidget {
  const AddColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.orange,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
