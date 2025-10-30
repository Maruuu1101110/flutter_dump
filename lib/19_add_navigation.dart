import 'package:flutter/material.dart';
import 'package:flutterbasics_52/screens/18_add_snackbar.dart';
import 'package:flutterbasics_52/screens/20_add_text_form_fields.dart';

class AddNavigation extends StatefulWidget {
  const AddNavigation({super.key});

  @override
  State<AddNavigation> createState() => _AddNavigationState();
}

class _AddNavigationState extends State<AddNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen 1'),
          leading: Icon(Icons.menu),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Screen 1'.toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 50),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => AddSnackbar()));
                  },
                  label: const Text('Screen 2'),
                  icon: const Icon(Icons.arrow_right_alt),
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12)))),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => AddTextFormFields()));
                  },
                  label: const Text('Screen 3'),
                  icon: const Icon(Icons.arrow_right_alt),
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12)))),
                )
              ],
            ),
          ),
        ));
  }
}
