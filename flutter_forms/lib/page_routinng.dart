import 'package:flutter/material.dart';
import 'package:flutter_forms/intro_page.dart';
import 'package:flutter_forms/signed_in.dart';

class RouteHandler {
  static Route<dynamic> pageRouting(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const IntroPage());
      case '/signedIn':
        if (args is Map) {
          return MaterialPageRoute(
              builder: (context) => SignedIn(
                    firstName: args["Name"],
                    // surname: args["Surname"],
                    phoneNumber: args["PhoneNumber"],
                    emailAddress: args["EmailAddress"],
                  ));
        } else {
          return MaterialPageRoute(builder: (context) => const IntroPage());
        }
      default:
        return MaterialPageRoute(builder: (context) => const IntroPage());
    }
  }
}
