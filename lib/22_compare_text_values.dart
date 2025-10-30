import 'package:flutter/material.dart';

import '../widgets/01_add_textformfields.dart';

class CompareTextValues extends StatefulWidget {
  const CompareTextValues({super.key});

  @override
  State<CompareTextValues> createState() => _CompareTextValuesState();
}

class _CompareTextValuesState extends State<CompareTextValues> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const AddTextFormFields_01(
                label: "Name",
                hintText: "Complete Name",
                icon: Icons.person,
              ),
              const SizedBox(
                height: 10,
              ),
              const AddTextFormFields_01(
                label: "Address",
                hintText: "Complete Address",
                icon: Icons.pin_drop,
              ),
              const SizedBox(
                height: 30,
              ),
              AddTextFormFields_02(
                textController: _textController,
                label: "Main Text",
                hintText: "Input text here...",
                icon: Icons.text_fields,
                onChanged: (value) => setState(() {}),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Direct: "${_textController.text}"'),
            ],
          ),
        ),
      ),
    );
  }
}
