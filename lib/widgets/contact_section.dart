import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/size.dart';
import 'package:my_portfolio_website/constants/sns_links.dart';
import 'package:my_portfolio_website/widgets/socialIcons.dart';
import 'package:social_media_flutter/widgets/icons.dart';

import '../constants/colors.dart';
import 'custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    double w = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        color: CustomColor.bgLight1,
        child: Column(
          children: [
            // title
            // const Text(
            //   "Get in touch",
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 24,
            //     color: CustomColor.whitePrimary,
            //   ),
            // ),

            // const SizedBox(height: 50),
            // ConstrainedBox(
            //   constraints: const BoxConstraints(
            //     maxWidth: 700,
            //     maxHeight: 100,
            //   ),
            //   child: LayoutBuilder(
            //     builder: (context, constraints) {
            //       if (constraints.maxWidth >= kMinDesktopWidth) {
            //         return buildNameEmailFieldDesktop();
            //       }

            //       // else
            //       return buildNameEmailFieldMobile();
            //     },
            //   ),
            // ),
            // const SizedBox(height: 15),
            // // message
            // ConstrainedBox(
            //   constraints: const BoxConstraints(
            //     maxWidth: 700,
            //   ),
            //   child: CustomTextField(
            //     hintText: "Your message",
            //     maxLines: 16,
            //   ),
            // ),
            // const SizedBox(height: 20),
            // // send button
            // ConstrainedBox(
            //   constraints: const BoxConstraints(
            //     maxWidth: 700,
            //   ),
            //   child: SizedBox(
            //     width: w / 2,
            //     child: ElevatedButton(
            //       onPressed: () {},
            //       child: const Text("Get in touch"),
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 30),

            // ConstrainedBox(
            //   constraints: const BoxConstraints(
            //     maxWidth: 300,
            //   ),
            //   child: const Divider(),
            // ),
            // const SizedBox(height: 15),

            // SNS icon button links
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      socialIcon('https://github.com/AryanC19',
                          SocialIconsFlutter.github),
                      socialIcon(
                          'https://www.linkedin.com/in/aryan-chaudhary-1a6594218/',
                          SocialIconsFlutter.linkedin_box),
                      socialIcon(
                        'https://leetcode.com/zomby/',
                        Image.asset('assets/icons/leetcode.png',
                            width: 25, height: 40, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      socialIcon(
                        'https://drive.google.com/file/d/1h2lenZxbwTV-9H5awpsCoqia4D87A2t4/view?usp=sharing',
                        Image.asset('assets/icons/resume.png',
                            width: 25, height: 37, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  SelectableText(
                    'aryanchaudhary1900@gmail.com',
                    style: const TextStyle(
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Preah',
                    ),
                    contextMenuBuilder: (BuildContext context,
                        EditableTextState editableTextState) {
                      final List<ContextMenuButtonItem> buttonItems =
                          editableTextState.contextMenuButtonItems;
                      return AdaptiveTextSelectionToolbar.buttonItems(
                        anchors: editableTextState.contextMenuAnchors,
                        buttonItems: buttonItems,
                      );
                    },
                    showCursor: true,
                    cursorWidth: 2,
                    cursorColor: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Row buildNameEmailFieldDesktop() {
  //   return Row(
  //     children: [
  //       // name
  //       Flexible(
  //         child: CustomTextField(
  //           hintText: "Your name",
  //         ),
  //       ),
  //       const SizedBox(width: 15),
  //       // email
  //       Flexible(
  //         child: CustomTextField(
  //           hintText: "Your email",
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Column buildNameEmailFieldMobile() {
  //   return Column(
  //     children: [
  //       // name
  //       CustomTextField(
  //         hintText: "Your name",
  //       ),
  //       const SizedBox(height: 15),
  //       // email
  //       CustomTextField(
  //         hintText: "Your email",
  //       ),
  //     ],
  //   );
  // }
}
