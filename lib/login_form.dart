import 'package:flutter/material.dart';
import 'package:flutterbasics_52/screens/14_prelim_exam.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  bool _showPass = false;

  String user = "User";
  String pass = "pass";

  void _checkLogin() {
    if (_unameController.text != user && _passController.text != pass) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(const SnackBar(content: Text("Wrong Credentials!")));
    } else {
      Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const PrelimExam(),
          ));
    }
  }

  Widget _textInput(bool obs, TextEditingController controller, String hintText,
      double textFormWidth, icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      width: textFormWidth,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        obscureText: obs,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: hintText, suffixIcon: icon),
        controller: controller,
      ),
    );
  }

  Widget _verticalLayout(textFormWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: 500,
            height: 300,
            child: Image.asset('assets/login_image.png')),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _textInput(false, _unameController, 'Username', textFormWidth,
                Icon(Icons.person)),
            const SizedBox(
              height: 10,
            ),
            _textInput(
              _showPass,
              _passController,
              "Password",
              textFormWidth,
              IconButton(
                  onPressed: () => setState(() {
                        _showPass = !_showPass;
                      }),
                  icon: Icon(Icons.remove_red_eye)),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: textFormWidth,
                child: ElevatedButton(
                    onPressed: _checkLogin, child: const Text("Sign In")))
          ],
        )
      ],
    );
  }

  Widget _horizontalLayout(textFormWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: 700,
            height: 700,
            child: Image.asset('assets/login_image.png')),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textInput(false, _unameController, 'Username', textFormWidth,
                Icon(Icons.person)),
            const SizedBox(
              height: 10,
            ),
            _textInput(
                _showPass,
                _passController,
                "Password",
                textFormWidth,
                IconButton(
                    onPressed: () => setState(() {
                          _showPass = !_showPass;
                        }),
                    icon: Icon(Icons.remove_red_eye))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: textFormWidth,
                child: ElevatedButton(
                    onPressed: _checkLogin, child: const Text("Sign In")))
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    late final double textFormWidth = MediaQuery.of(context).size.width * 0.5;
    late final generalWidth = MediaQuery.of(context).size.width;
    print(generalWidth);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: generalWidth <= 1155
                ? _verticalLayout(textFormWidth)
                : _horizontalLayout(textFormWidth.clamp(0, 500))));
  }
}
