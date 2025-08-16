import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playground_flutter/themes/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final Color _bgColor = Color.fromRGBO(30, 26, 38, 1.0);

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text("Logout"),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      Center(
        child: Text("Home Page", style: TextStyle(color: Colors.white)),
      ),
      Center(
        child: Text("Stats Page", style: TextStyle(color: Colors.white)),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Settings Page", style: TextStyle(color: Colors.white)),
            _buildButton(),
          ],
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(
        title: Text("$_pages", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black12,
        leading: Icon(Icons.home, color: Colors.white),
      ),
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          hoverColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white70,
          selectedItemColor: AppThemeColors.primary,
          backgroundColor: Color.fromRGBO(44, 38, 56, 1),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_rounded),
              label: "Stats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
