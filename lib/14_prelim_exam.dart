import 'package:flutter/material.dart';

class PrelimExam extends StatefulWidget {
  const PrelimExam({super.key});

  @override
  State<PrelimExam> createState() => _PrelimExamState();
}

class _PrelimExamState extends State<PrelimExam> {
  int _currentIndex = 0;
  String _title = "Home";
  late final List<Widget> _pages = [
    const Text(
      "Home Screen",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    _createPage("Container Widget", _createContainer()),
    _createPage("Column Widget", _createColumn()),
    _createPage("Row Widget", _createRow()),
  ];

  Widget _createPage(String title, Widget widget) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        widget
      ],
    );
  }

  Widget _createContainer() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    );
  }

  Widget _createColumn() {
    return SizedBox(
      height: 640,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              _createContainer(),
              const SizedBox(
                height: 10,
              ),
              _createContainer(),
              const SizedBox(
                height: 10,
              ),
              _createContainer()
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _createContainer(),
              const SizedBox(
                height: 10,
              ),
              _createContainer(),
              const SizedBox(
                height: 10,
              ),
              _createContainer()
            ],
          ),
          Column(
            children: [
              _createContainer(),
              const SizedBox(
                height: 10,
              ),
              _createContainer(),
              const SizedBox(
                height: 10,
              ),
              _createContainer()
            ],
          )
        ],
      ),
    );
  }

  Widget _createRow() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _createContainer(),
            _createContainer(),
            _createContainer(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _createContainer(),
            _createContainer(),
            _createContainer(),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        actions: const <Icon>[
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person)
        ],
      ),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blue.shade800,
          unselectedItemColor: Colors.black45,
          onTap: (index) {
            return setState(() {
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Container", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: "Column", icon: Icon(Icons.view_column)),
            BottomNavigationBarItem(label: "Row", icon: Icon(Icons.table_rows)),
          ]),
    );
  }
}
