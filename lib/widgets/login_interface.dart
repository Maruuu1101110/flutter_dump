import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class LoginInterface extends StatefulWidget {
  const LoginInterface({super.key});

  @override
  State<LoginInterface> createState() => _LoginInterfaceState();
}

class _LoginInterfaceState extends State<LoginInterface> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Colors
  Color _bgColor = Color.fromRGBO(104, 98, 121, 1);

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _buildTextField(String text, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text + "...",
        labelStyle: TextStyle(
          fontSize: 14,
          color: Colors.white70.withValues(alpha: 0.5),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  Widget _buildSocialIcons(ButtonType buttonType, String title) {
    return FlutterSocialButton(
      onTap: () {},
      buttonType: buttonType,
      mini: true,
      iconSize: 16,
      title: title,
      titleStyle: TextStyle(fontSize: 16),
      iconColor: Colors.white,
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          width: 300,
          height: 475,
          decoration: BoxDecoration(
            color: Color.fromRGBO(44, 38, 56, 1),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 10,
                blurRadius: 30,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black26, width: 2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(50),
                    child: Image.asset("assets/icons/icon.jpg"),
                  ),
                ), // Profile Icon
                SizedBox(height: 20),
                _buildTextField("Username", _usernameController),
                SizedBox(height: 20),
                _buildTextField("Password", _passwordController),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                        shadowColor: Colors.black26,
                      ),
                      child: Text(
                        "Create",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                        shadowColor: Colors.black26,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text("Login with...", style: TextStyle(color: Colors.white70)),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildSocialIcons(ButtonType.google, "Google"),
                    _buildSocialIcons(ButtonType.facebook, "Facebook"),
                    _buildSocialIcons(ButtonType.whatsapp, "Whatsapp"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: _bgColor,
        body: Center(child: _buildBody()),
      ),
    );
  }
}
