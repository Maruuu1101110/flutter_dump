import 'package:flutter/material.dart';

class AddColumnRow extends StatelessWidget {
  const AddColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
