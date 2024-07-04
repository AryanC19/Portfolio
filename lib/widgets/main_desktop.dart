import 'package:flutter/material.dart';
import 'package:my_portfolio_website/widgets/socialIcons.dart';
import 'package:my_portfolio_website/widgets/socialWidget.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'dart:html' as html;
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';
import 'package:rive/rive.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.3,
      constraints: const BoxConstraints(
        minHeight: 650.0,
      ),decoration: BoxDecoration(color: Color.fromARGB(4, 21, 20, 20), boxShadow: [
        BoxShadow(
          blurRadius: 200,
          spreadRadius: 200,
          color: Color.fromARGB(139, 75, 28, 83).withOpacity(0.4),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Stack(
                  children: [
         
                     SizedBox(
                         height: screenHeight/1.5,
                         child: RiveAnimation.asset(
                             'assets/animations/intro_animation.riv',fit: BoxFit.fitHeight, )),
                    Row(
                      children: [
                        SizedBox(width:w/8),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: w / 14,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: w / 14 - 4,
                                backgroundImage:
                                    const AssetImage("assets/self.png"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //
                                      socialIcon(
                                          'https://github.com/AryanC19',
                                          SocialIconsFlutter.github),
                                      socialIcon(
                                          'https://www.linkedin.com/in/aryan-chaudhary-1a6594218/',
                                          SocialIconsFlutter.linkedin_box),
                                      socialIcon(
                                        'https://leetcode.com/zomby/',
                                        Image.asset(
                                            'assets/icons/leetcode.png',
                                            width: 25,
                                            height: 40,
                                            color: Colors.white),
                                      ),
                                      SizedBox(width: 10,),
                                      socialIcon(
                                        'https://drive.google.com/file/d/1h2lenZxbwTV-9H5awpsCoqia4D87A2t4/view?usp=sharing',
                                        Image.asset(
                                            'assets/icons/resume.png',
                                            width: 25,
                                            height: 40,
                                            color: Colors.white),
                                      ),
                                      
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 40,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Preah',
                                    fontSize: w / 30,
                                  ),
                                  children: [
                                    const TextSpan(text: 'I am '),
                                    TextSpan(
                                      text: 'Aryan Chaudhary ,',
                                      style:
                                          TextStyle(color: Colors.purple),
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
                                        text:
                                            'A final year student from\n'),
                                    const TextSpan(text: 'VIT-Vellore '),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
