import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageThree extends StatefulWidget {
  const LoginPageThree({Key? key}) : super(key: key);

  @override
  _LoginPageThreeState createState() => _LoginPageThreeState();
}

// Color Scheme generated from Material Theme Builder web
// Head to https://material-foundation.github.io/material-theme-builder/#/custom to create

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFf4325c),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFD9E0),
  onPrimaryContainer: Color(0xFF3F0016),
  secondary: Color(0xFFC5A9B4),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFD9E0),
  onSecondaryContainer: Color(0xFF2B151A),
  tertiary: Color(0xFF9299A5),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDCB9),
  onTertiaryContainer: Color(0xFF2C1600),
  error: Color(0xFFBA1B1B),
  errorContainer: Color(0xFFFFDAD4),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410001),
  background: Color(0xFFFCFCFC),
  onBackground: Color(0xFF201A1B),
  surface: Color(0xFFFCFCFC),
  onSurface: Color(0xFF201A1B),
  surfaceVariant: Color(0xFFF3DDE0),
  onSurfaceVariant: Color(0xFF514345),
  outline: Color(0xFF847376),
  onInverseSurface: Color(0xFFFAEEEF),
  inverseSurface: Color(0xFF362F30),
  inversePrimary: Color(0xFFFFB1C3),
  shadow: Color(0xFF000000),
);

class _LoginPageThreeState extends State<LoginPageThree> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme: lightColorScheme,
          textTheme: GoogleFonts.openSansTextTheme().apply(
              displayColor: const Color(0xFF383838),
              bodyColor: const Color(0xFF383838)),
          useMaterial3: true),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(
                parent: NeverScrollableScrollPhysics()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('myApp',style: TextStyle(fontWeight: FontWeight.w600,color: lightColorScheme.primary),),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Welcome,',
                                style: TextStyle(
                                    fontSize: 34, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Sign in to continue!',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: lightColorScheme.tertiary),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          validator: (val) {},
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14)),
                              borderSide: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            labelText: 'Username',
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          validator: (val) {
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(14)),
                              borderSide: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            labelText: 'Password',
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              stops: [
                                0.20,
                                0.90,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFFFB578E),
                                Color(0xFFFDA58E),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                            ),
                            onPressed: () {},
                            child: const Text('Login'),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Color(0xFFEAEEF4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.facebook,
                                  color: Color(0xFF4267B2),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Connect with Facebook',
                                  style: TextStyle(color: Color(0xFF4267B2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "I'm a new user.",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          InkWell(
                              child: Text("Sign Up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Color(0xFFFB578E))))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
