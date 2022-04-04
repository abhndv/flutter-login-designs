import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageOne extends StatefulWidget {
  const LoginPageOne({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

// Color Scheme generated from Material Theme Builder web
// Head to https://material-foundation.github.io/material-theme-builder/#/custom to create

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB2B9),
  onPrimary: Color(0xFF68001C),
  primaryContainer: Color(0xFF90042D),
  onPrimaryContainer: Color(0xFFFFDADD),
  secondary: Color(0xFFE5BDBF),
  onSecondary: Color(0xFF43292B),
  secondaryContainer: Color(0xFF5C3F41),
  onSecondaryContainer: Color(0xFFFFD9DB),
  tertiary: Color(0xFFE8C08E),
  onTertiary: Color(0xFF442B06),
  tertiaryContainer: Color(0xFF5D421B),
  onTertiaryContainer: Color(0xFFFFDDB1),
  error: Color(0xFFFFB4A9),
  errorContainer: Color(0xFF930006),
  onError: Color(0xFF680003),
  onErrorContainer: Color(0xFFFFDAD4),
  background: Color(0xFF201A1A),
  onBackground: Color(0xFFECDFDF),
  surface: Color(0xFF201A1A),
  onSurface: Color(0xFFECDFDF),
  surfaceVariant: Color(0xFF534344),
  onSurfaceVariant: Color(0xFFD7C1C2),
  outline: Color(0xFFA08C8D),
  onInverseSurface: Color(0xFF201A1A),
  inverseSurface: Color(0xFFECDFDF),
  inversePrimary: Color(0xFFB22643),
  shadow: Color(0xFF000000),
);

class _LoginPageState extends State<LoginPageOne> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme: darkColorScheme,
          textTheme: GoogleFonts.poppinsTextTheme()
              .apply(displayColor: Colors.white, bodyColor: Colors.white),
          useMaterial3: true),
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff0d1117),
                  Color(0xff212e40),
                ]),
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'myApp',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter a username";
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary),
                    ),
                    fillColor: Colors.lightBlue,
                    labelText: 'Username',
                    labelStyle: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter a password";
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.arrow_circle_left,
                              ),
                            ),
                            Text(
                              'Sign Up',
                            )
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: const [
                              Text(
                                'Continue',
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: Icon(
                                  Icons.arrow_right_alt_rounded,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 28),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
