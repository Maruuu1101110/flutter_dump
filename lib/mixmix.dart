import 'package:flutter/material.dart';

class Mixmix extends StatefulWidget {
  const Mixmix({super.key});

  @override
  State<Mixmix> createState() => _MixmixState();
}

class _MixmixState extends State<Mixmix> {
  void _showSnackbar() {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text("This is a snackbar")));
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content:
                  Card(child: Image.network('https://picsum.photos/300/200')),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: const ButtonStyle(
                    padding:
                        WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.all(20))),
                onPressed: () => _showDialog(),
                child: const Text("Click to show Image")),
            OutlinedButton(
              onPressed: () => _showSnackbar(),
              child: const Text("Click to show Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
