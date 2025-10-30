import 'package:flutter/material.dart';

// The following example is just limited to two(2) buttons.
// There are more buttons that you can find in flutter.dev,
// so try to add them here on your own.
class AddButtons extends StatelessWidget {
  const AddButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                      title: Text('Text Button Alert Dialog'),
                      content: Text('The text bitton was clicked')),
                );
              },
              child: Text('Text Button'),
            ),
          OutlinedButton(onPressed: (){
            showDialog(context: context, builder: (context) => AlertDialog(
              title: Text('Outline Button Laert Dialog'), content: Text('The outlined button was clicked.'),
            ));
          }, child: Text('Outlined Button')),
          ],
        ),
      ),
    );
  }
}
