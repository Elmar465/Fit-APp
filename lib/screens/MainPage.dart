import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/Menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter1/widget/customShape.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
  static const routeName = '/';
}

class _MainPageState extends State<MainPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        toolbarHeight: 200,
        // toolbarHeight: 111.0,
        // backgroundColor: Colors.green,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 50.0),
          child: Text(
            'WELCOME TO FITAPP',
            style: TextStyle(wordSpacing: 10, fontFamily: AutofillHints.photo),
          ),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: Customshape(),
          child: Container(
            height: 250.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_2,
                    size: 50.0,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FITAPP',
                  style: GoogleFonts.architectsDaughter(
                      fontSize: 50.0, color: Colors.red),
                ),
                const SizedBox(
                  height: 25.9,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Enter your E-mail',
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Enter your Password',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(40.0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    overlayColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xff4286f4)),
                    fixedSize:
                        MaterialStateProperty.all(const Size(300.0, 50.0)),
                    shadowColor: MaterialStateProperty.all<Color>(
                        const Color(0xff373B44)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Color(0xff373B44),
                    )),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: ((context) => const MenuPage())));
                  },
                  child: Text(
                    'START TO SWEAT',
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic,
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
