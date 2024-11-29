import 'package:first_app/pages/clock_page_with_canvas.dart';
import 'package:first_app/pages/clock_page_with_font.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/pages/register_page.dart';
import 'package:first_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"title": "Welcome", "page": const WelcomePage()},
    {"title": "Login", "page": const LoginPage()},
    {"title": "Register", "page": const RegisterPage()},
    {"title": "Clock", "page": const ClockPage()},
    {"title": "Digital", "page": const ClockPageDigital()},
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item["title"]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item["page"]),
              );
            },
          );
        },
      ),
    );
  }
}