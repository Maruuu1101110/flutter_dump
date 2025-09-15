import 'package:flutter/material.dart';

class AddBottomAppBar2 extends StatefulWidget {
  const AddBottomAppBar2({super.key});

  @override
  State<AddBottomAppBar2> createState() => _AddBottomAppBar2State();
}

class _AddBottomAppBar2State extends State<AddBottomAppBar2> {
  int _selectedIndex = 0;

  late final Map<String, Widget> _pagesPair = {
    "Home": Center(
      child: Text(
        "Home Screen",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    ),
    "Container": _buildContainer(),
    "Column": _buildColumn(),
    "Row": _buildRow(),
  };

  _buildBottomItems(IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: _pagesPair.keys.elementAt(_selectedIndex),
    );
  }

  Widget _buildContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Container Widget",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(height: 30),
        Container(width: 100, height: 100, color: Colors.blue),
      ],
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Column Widget",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(height: 30),
        Column(
          children: [
            Container(width: 100, height: 100, color: Colors.blue),
            SizedBox(height: 10),
            Container(width: 100, height: 100, color: Colors.blue),
            SizedBox(height: 10),
            Container(width: 100, height: 100, color: Colors.blue),
          ],
        ),
      ],
    );
  }

  Widget _buildRow() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Row Widget",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: Colors.blue),
            SizedBox(width: 50),
            Container(width: 100, height: 100, color: Colors.blue),
            SizedBox(width: 50),
            Container(width: 100, height: 100, color: Colors.blue),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pagesPair.keys.elementAt(_selectedIndex)),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 24,
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu, color: Colors.blueAccent),
            );
          },
        ),
        actions: <Widget>[
          const Icon(Icons.settings_rounded),
          const Icon(Icons.notifications_rounded),
          const Icon(Icons.person_rounded),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Center(child: _pagesPair.values.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        enableFeedback: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue.shade800,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          _buildBottomItems(Icons.home),
          _buildBottomItems(Icons.apps),
          _buildBottomItems(Icons.view_column_sharp),
          _buildBottomItems(Icons.table_rows),
        ],
      ),
    );
  }
}
