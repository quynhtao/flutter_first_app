import 'package:first_app/widgets/buttons/elevated_button_with_shadow.dart';
import 'package:first_app/widgets/buttons/simple_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            width: screenSize.width,
            height: screenSize.height,
            'assets/images/objects.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/welcome.svg',
                      width: 300,
                      height: 300,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "Discover Your\nDream Job here",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Explore all the existing job roles based on your interest and study major",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButtonWithShadow(
                          text: "Login",
                          onPressed: () {
                            // Handle Login button press
                          },
                        ),
                        const SizedBox(width: 40),
                        SimpleTextButton(
                          text: "Register",
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          onPressed: () {
                            // Handle Register button press
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
