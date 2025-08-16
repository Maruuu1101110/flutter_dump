import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:playground_flutter/home_page/home_page.dart';

class LoginInterface extends StatefulWidget {
  const LoginInterface({super.key});

  @override
  State<LoginInterface> createState() => _LoginInterfaceState();
}

class _LoginInterfaceState extends State<LoginInterface> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final Color _bgColor = Color.fromRGBO(30, 26, 38, 1.0);
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _buildTextField(
    String text,
    TextEditingController controller,
    bool obscure,
  ) {
    return TextField(
      controller: controller,
      obscureText: obscure ? _isObscure : false,
      style: const TextStyle(color: Colors.white),
      onChanged: (_) {
        setState(() {});
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12,
        ),
        labelText: text,
        labelStyle: TextStyle(
          fontSize: 14,
          color: Colors.white70.withValues(alpha: 0.5),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        suffixIcon: obscure && _passwordController.text.isNotEmpty
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon: Icon(
                  _isObscure
                      ? Icons.remove_red_eye_outlined
                      : Icons.remove_red_eye_sharp,
                  color: Colors.white70,
                ),
              )
            : null,
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
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: 300,
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
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/icons/icon.jpg"),
                        ),
                      ), // Profile Icon
                      SizedBox(height: 10),
                      Text(
                        "Welcome back!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Please enter your details to login.",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                      SizedBox(height: 20),
                      _buildTextField("Username", _usernameController, false),
                      SizedBox(height: 20),
                      _buildTextField("Password", _passwordController, true),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 245,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white70,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadowColor: Colors.black26,
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        HomePage(),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "You can login with",
                        style: TextStyle(color: Colors.white70),
                      ),
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
            ],
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
        body: SafeArea(child: Center(child: _buildBody())),
      ),
    );
  }
}
