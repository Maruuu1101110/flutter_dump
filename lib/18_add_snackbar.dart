import 'package:flutter/material.dart';

// This sample will display a pop-up at the bottom of your screen
// You may use this as a message for your users whenever
// a process has been triggered.

class AddSnackbar extends StatelessWidget {
  const AddSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('The snackbar button has been clicked'),
              action: SnackBarAction(label: 'Action', onPressed: () {}),
            ));
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
