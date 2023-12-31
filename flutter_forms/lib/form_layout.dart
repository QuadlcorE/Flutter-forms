import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class FormLayout extends StatefulWidget {
  const FormLayout({super.key});

  @override
  State<FormLayout> createState() => _FormLayoutState();
}

class _FormLayoutState extends State<FormLayout> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _legalFirstNameController =
      TextEditingController();
  final TextEditingController _legalSurnameController = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _password = TextEditingController();

  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Entry 1 Legal First Name
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Full legal first and middle name(s)',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: TextFormField(
                    controller: _legalFirstNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field cannot be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // label: const Text("Full legal first and middle name(s)"),
                        // labelText: "Full legal first and middle name(s)",
                        hintStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: "Full legal first and middle name(s)",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Text(
                  'As it appears on your valid ID',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Entry 2 Legal Surname
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full legal Surname',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: TextFormField(
                    controller: _legalSurnameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field cannot be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: "Full legal Surname",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Text(
                  'As it appears on your valid ID',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Entry 3 Phone Number
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: InternationalPhoneNumberInput(
                      hintText: "Example: 818000000",
                      onInputChanged: (PhoneNumber number) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "This field cannot be empty";
                        }
                        return null;
                      },
                      maxLength: 11,
                      searchBoxDecoration: InputDecoration(
                          filled: true, fillColor: Colors.grey[300]),
                      selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.DROPDOWN,
                          showFlags: true),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      initialValue: number,
                      textFieldController: _phoneNumber,
                      formatInput: false,
                      spaceBetweenSelectorAndTextField: 0,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Entry 4 Email Address
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email address',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: TextFormField(
                    controller: _emailAddress,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      String pattern = r"\w+@\w+\..";
                      RegExp expression = RegExp(pattern);
                      if (value == null || value.isEmpty) {
                        return "This field cannot be empty";
                      } else if (!expression.hasMatch(value)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Entry 5 Password
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: TextFormField(
                    obscureText: true,
                    controller: _password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length < 8) {
                        return "Password connot be less than 8 digits";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Text
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Text(
              'I confirm the information provided as they appear on my legal document',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
          ),

          // Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 0,
              minimumSize: const Size.fromHeight(50),
              backgroundColor: Colors.grey[300],
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                var name =
                    "${_legalFirstNameController.text.toString()} ${_legalSurnameController.text.toString()}";
                Navigator.pushNamed(context, '/signedIn', arguments: {
                  "Name": name,
                  "PhoneNumber": _phoneNumber.text,
                  "EmailAddress": _emailAddress.text,
                });
                // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //     content: Text("User validation successful")));
              }
            },
            child: Text(
              'Create your account',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
