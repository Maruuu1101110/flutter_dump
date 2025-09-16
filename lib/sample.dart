import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int _currentIndex = 0;
  String _title = "";
  late final List<Widget> _pages = [
    Text(
      "Home Screen",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
    _createPage("Container", _createContainer()),
    _createPage(
      "Column",
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _createContainer(),
          SizedBox(height: 10),
          _createContainer(),
          SizedBox(height: 10),
          _createContainer(),
        ],
      ),
    ),
    _createPage(
      "Row",
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [_createContainer(), _createContainer(), _createContainer()],
      ),
    ),
  ];

  Widget _createPage(String title, Widget widget) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(height: 20),
        widget,
      ],
    );
  }

  Widget _createContainer() {
    return Container(width: 100, height: 100, color: Colors.blue.shade800);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.menu_rounded, color: Colors.blue),
        actions: [
          Icon(Icons.settings_rounded),
          Icon(Icons.notifications_rounded),
          Icon(Icons.person_rounded),
        ],
      ),
      body: Center(child: _pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue.shade800,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (_currentIndex) {
              case 0:
                _title = "Home";
              case 1:
                _title = "Container";
              case 2:
                _title = "Column";
              case 3:
                _title = "Row";
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: "Container",
            icon: Icon(Icons.apps_rounded),
          ),
          BottomNavigationBarItem(
            label: "Column",
            icon: Icon(Icons.view_column_rounded),
          ),
          BottomNavigationBarItem(
            label: "Row",
            icon: Icon(Icons.table_rows_rounded),
          ),
        ],
      ),
    );
  }
}
