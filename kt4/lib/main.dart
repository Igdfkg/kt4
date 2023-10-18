import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key});
  String name = "";
  String email = "";
  String password = "";
  String confirmPassword = "";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/backgr.jpg', // Путь к вашей фоновой картинке
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo2.png', // Путь к вашему изображению логотипа
                          width: 250,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(40),
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 206, 207, 207).withOpacity(0.95),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create a Blender ID",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        _buildTextField("Full Name *", "Enter your full name", (value) {
                          // Обработчик для поля name
                          name = value;
                        }),
                        _buildTextField("Create a Blender ID", "Full Name *", (value){
                        }),
                        _buildTextField("Email *", "Enter your email", (value) {
                          // Обработчик для поля email
                          email = value;
                        }),
                        _buildTextField("Password *", "Enter your password", (value) {
                          // Обработчик для поля password
                          password = value;
                        }),
                        _buildTextField("Confirm Password *", "Confirm your password", (value) {
                          // Обработчик для поля confirm password
                          confirmPassword = value;
                        },
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                           color: Color.fromARGB(218, 71, 157, 255).withOpacity(0.5),
                           borderRadius: BorderRadius.circular(10),
                          ),
                            padding: EdgeInsets.all(3),
                            child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, String placeholder, Function(String) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        CupertinoTextField(
          placeholder: placeholder,
          padding: EdgeInsets.all(5),
          onChanged: onChanged,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}