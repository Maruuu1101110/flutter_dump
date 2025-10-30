import 'package:flutter/material.dart';

class AddTextFormFields extends StatefulWidget {
  const AddTextFormFields({super.key});

  @override
  State<AddTextFormFields> createState() => _AddTextFormFieldsState();
}

class _AddTextFormFieldsState extends State<AddTextFormFields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Enter Username'),
                  hintText: 'Pepper',
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Enter Address'),
                  hintText: 'Address',
                  suffixIcon: Icon(
                    Icons.pin_drop,
                    color: Colors.green,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.clear,
                      size: 50,
                      color: Colors.orange,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.save,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
