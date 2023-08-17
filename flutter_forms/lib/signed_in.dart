import 'package:flutter/material.dart';

class SignedIn extends StatelessWidget {
  const SignedIn(
      {super.key,
      required this.firstName,
      // required this.surname,
      required this.phoneNumber,
      required this.emailAddress});

  final String firstName;
  // final String surname;
  final String phoneNumber;
  final String emailAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
            child: Container(
          margin: const EdgeInsets.all(10),
          child: Card(
            color: Colors.white,
            child: Column(
              children: [
                Text("Name: $firstName "),
                Text("Phone Number: $phoneNumber"),
                Text("EmalAddress: $emailAddress"),
              ],
            ),
          ),
        )));
  }
}

// class SignedIn extends StatefulWidget {
//   const SignedIn({super.key});

//   @override
//   State<SignedIn> createState() => _SignedInState();
// }

// class _SignedInState extends State<SignedIn> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: SafeArea(
//           child: Container(
//         margin: const EdgeInsets.all(10),
//         child: const Card(
//           child: Column(
//             children: [
//               Text("OIIIIIIII"),
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }
