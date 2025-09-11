import 'package:flutter/material.dart';

class AddBottomAppBar extends StatefulWidget {
  const AddBottomAppBar({super.key});

  @override
  State<AddBottomAppBar> createState() => _AddBottomAppBarState();
}

class _AddBottomAppBarState extends State<AddBottomAppBar> {
  int _currentIndex = 0;

  final Map<String, Widget> _pagesPair = {
    "School": const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.school_rounded,
          size: 50,
        ),
        Text(
          "School Screen",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    "Schedule": const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.schedule_rounded,
          size: 50,
        ),
        Text(
          "Schedule Screen",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    "Score": const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.score_rounded,
          size: 50,
        ),
        Text(
          "Score Screen",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  };

  _buildBottomItems(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pagesPair.keys.elementAt(_currentIndex)),
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
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
      body: SafeArea(
        child: Center(child: _pagesPair.values.elementAt(_currentIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            _buildBottomItems(Icons.school_rounded, "School"),
            _buildBottomItems(Icons.schedule_rounded, "Schedule"),
            _buildBottomItems(Icons.score_rounded, "Score")
          ]),
    );
  }
}
