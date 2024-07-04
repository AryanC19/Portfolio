import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    double w = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 30.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(4, 21, 20, 20),
        boxShadow: [
          BoxShadow(
            blurRadius: 200,
            spreadRadius: 200,
            color: Color.fromARGB(139, 75, 28, 83).withOpacity(0.4),
          )
        ],
      ),
      height: 380,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // avatar img
          const Expanded(
            child: CircleAvatar(
              radius: 200,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 85,
                backgroundImage: AssetImage("assets/self.png"),
              ),
            ),
          ),

          const SizedBox(height: 30),
          // intro message

          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: double.infinity,
                  child: RiveAnimation.asset(
                    'assets/animations/intro_animation.riv',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Preah',
                          fontSize: w / 20,
                        ),
                        children: [
                          const TextSpan(text: 'I am '),
                          TextSpan(
                            text: 'Aryan Chaudhary,',
                            style: TextStyle(color: Colors.purple),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.2,
                          fontFamily: 'Preah',
                          fontSize: w / 30,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(
                              text: 'A final year student from VIT-Vellore \n'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
