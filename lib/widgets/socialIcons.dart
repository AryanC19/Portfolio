 import 'package:flutter/material.dart';
import 'package:my_portfolio_website/widgets/socialWidget.dart';
import 'dart:html' as html;

Widget socialIcon(String link, dynamic icon) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: icon is IconData
          ? SocialWidget(
              placeholderText: '',
              iconData: icon,
              iconColor: Colors.white,
              link: link,
            )
          : icon is Widget
              ? icon
              : SizedBox(), // Fallback in case neither IconData nor Widget is provided
    );
  }