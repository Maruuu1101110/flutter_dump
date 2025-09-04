import 'package:flutter/material.dart';

class WidgetUtilization extends StatelessWidget {
  const WidgetUtilization({super.key});

  Widget _helperContainer(text) {
    return Container(
      color: Colors.green,
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 50),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue,
              child: const Text(
                "Widget Utilization Part 1",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Column Widget:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                _helperContainer("1"),
                const SizedBox(
                  height: 10,
                ),
                _helperContainer("2"),
                const SizedBox(
                  height: 10,
                ),
                _helperContainer("3")
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Row Widget:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        _helperContainer("1"),
                        const SizedBox(
                          width: 10,
                        ),
                        _helperContainer("2"),
                        const SizedBox(
                          width: 10,
                        ),
                        _helperContainer("3"),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
