import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageTwo extends StatefulWidget {
  const LoginPageTwo({Key? key}) : super(key: key);

  @override
  _LoginPageTwoState createState() => _LoginPageTwoState();
}

// Color Scheme generated from Material Theme Builder web
// Head to https://material-foundation.github.io/material-theme-builder/#/custom to create

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF00687A),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFA6EDFF),
  onPrimaryContainer: Color(0xFF001F26),
  secondary: Color(0xFF4B6268),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFCDE7EE),
  onSecondaryContainer: Color(0xFF061F24),
  tertiary: Color(0xFF565D7E),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFDCE1FF),
  onTertiaryContainer: Color(0xFF121A37),
  error: Color(0xFFBA1B1B),
  errorContainer: Color(0xFFFFDAD4),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410001),
  background: Color(0xFFFAFCFD),
  onBackground: Color(0xFF191C1D),
  surface: Color(0xFFFAFCFD),
  onSurface: Color(0xFF191C1D),
  surfaceVariant: Color(0xFFDBE4E7),
  onSurfaceVariant: Color(0xFF3F484B),
  outline: Color(0xFF70797C),
  onInverseSurface: Color(0xFFEFF1F2),
  inverseSurface: Color(0xFF2E3132),
  inversePrimary: Color(0xFF55D7F3),
  shadow: Color(0xFF000000),
);

class _LoginPageTwoState extends State<LoginPageTwo> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme: lightColorScheme,
          textTheme: GoogleFonts.notoSansTextTheme(),
          // .apply(displayColor: Colors.white, bodyColor: Colors.white),
          useMaterial3: true),
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffffffff),
                  Color(0xffffffff),
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
                const Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Expanded(
                  child: Container(),
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary),
                    ),
                    labelText: 'Username',
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
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Password',
                    suffix: InkWell(
                      onTap: togglePassword,
                      child: Icon(
                        _isHidden ? Icons.visibility : Icons.visibility_off,
                        size: 22,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 14)),
                  onPressed: () {},
                  // padding: EdgeInsets.only(left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      // Icon(
                      //   Icons.arrow_right_alt_rounded,
                      // )
                    ],
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
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Sign Up',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Forgot Password',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
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

  void togglePassword() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
