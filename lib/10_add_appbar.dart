import 'package:flutter/material.dart';

class AddAppBar extends StatefulWidget {
  const AddAppBar({super.key});

  @override
  State<AddAppBar> createState() => _AddAppBarState();
}

class _AddAppBarState extends State<AddAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu));
        }),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_rounded,
                color: Colors.amber,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_rounded,
                color: Colors.blue,
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.settings_rounded)),
        ],
      ),
      drawer: const Drawer(
        width: 200,
      ),
      body: const SafeArea(
        child: Center(child: Text("Placeholder")),
      ),
    );
  }
}
