import 'package:flutter/material.dart';

class AddBottomAppBar2 extends StatefulWidget {
  const AddBottomAppBar2({super.key});

  @override
  State<AddBottomAppBar2> createState() => _AddBottomAppBar2State();
}

class _AddBottomAppBar2State extends State<AddBottomAppBar2> {
  int _selectedIndex = 0;

  late final Map<String, Widget> _pagesPair = {
    "School": buildPages(Icons.school_rounded, "School Screen"),
    "Schedule": buildPages(Icons.schedule_rounded, "Schedule Screen"),
    "Score": buildPages(Icons.score_rounded, "Score Screen")
  };

  _buildBottomItems(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }

  Widget buildPages(IconData icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pagesPair.keys.elementAt(_selectedIndex)),
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
        child: Center(child: _pagesPair.values.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          _buildBottomItems(Icons.school_rounded, "School"),
          _buildBottomItems(Icons.schedule_rounded, "Schedule"),
          _buildBottomItems(Icons.score_rounded, "Score")
        ],
      ),
    );
  }
}
