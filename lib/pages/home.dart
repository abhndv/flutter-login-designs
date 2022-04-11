import 'package:flutter/material.dart';
import 'package:flutter_login_designs/pages/login_2.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFB22643),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDADD),
  onPrimaryContainer: Color(0xFF40000E),
  secondary: Color(0xFF765658),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFD9DB),
  onSecondaryContainer: Color(0xFF2C1517),
  tertiary: Color(0xFF775930),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDDB1),
  onTertiaryContainer: Color(0xFF2A1800),
  error: Color(0xFFBA1B1B),
  errorContainer: Color(0xFFFFDAD4),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410001),
  background: Color(0xFFFCFCFC),
  onBackground: Color(0xFF201A1A),
  surface: Color(0xFFFCFCFC),
  onSurface: Color(0xFF201A1A),
  surfaceVariant: Color(0xFFF4DDDE),
  onSurfaceVariant: Color(0xFF534344),
  outline: Color(0xFF857374),
  onInverseSurface: Color(0xFFFBEDED),
  inverseSurface: Color(0xFF362F2F),
  inversePrimary: Color(0xFFFFB2B9),
  shadow: Color(0xFF000000),
);

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> pages = [
    {
      "image": "LoginOne.jpg",
      "title": "Login Design Dark",
      "page": const LoginPageOne()
    },
    {
      "image": "LoginTwo.jpg",
      "title": "Login Design Light",
      "page": const LoginPageTwo()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
            colorScheme: lightColorScheme,
            textTheme: GoogleFonts.poppinsTextTheme()
                .apply(displayColor: Colors.white, bodyColor: Colors.white),
            useMaterial3: true),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Flutter Login Designs',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // primary: false,
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: pages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return generateCard(
                      pages[index]['title'].toString(),
                      pages[index]['image'].toString(),
                      pages[index]['page'],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget generateCard(title, image, route) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(0, 0, 0, 0.3)),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            image: AssetImage("assets/screenshots/" + image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Color.fromRGBO(0, 0, 0, 0.3)),
              child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
