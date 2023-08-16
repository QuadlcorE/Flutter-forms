import 'package:flutter/material.dart';
import 'package:flutter_forms/form_layout.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 23, horizontal: 16),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 32, left: 33, right: 33),
                              child: Text(
                                'Create your account',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 32, horizontal: 33),
                              child: FormLayout(),
                            ),
                          ],
                        )),
                    // sign in text
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              // Remember to change the font for these text by adding google fonts
                              'Got an account? Sign in',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            // Remember to add a button for the sign in and replace and make bold
                          ]),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
