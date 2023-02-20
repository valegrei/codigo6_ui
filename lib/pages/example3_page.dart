import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/circle_widget.dart';

class Example3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //Fondo
            Positioned(
              top: -height * 0.3,
              left: -height * 0.05,
              child: CircleWidget(
                radius: height * 0.2,
                color: const Color(0xff329399),
              ),
            ),
            Positioned(
              top: -width * 0.8,
              right: -width * 0.66,
              child: CircleWidget(
                radius: width * 0.66,
                color: const Color(0xff8aec9e),
              ),
            ),
            //Formulario
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.1,),
                    Text(
                      "reisup",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff3ea2a8),
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: height * 0.03,),
                    Text(
                      "You have goals.",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff2e303e),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.9,
                      ),
                    ),
                    Text(
                      "Invest to achieve them",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff2e303e),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.9,
                      ),
                    ),
                    SizedBox(height: height * 0.03,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email*",
                        hintStyle: GoogleFonts.montserrat(color: Colors.black38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: const Color(0xff3ea2a8).withOpacity(0.5),
                          width: 2.5,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: const Color(0xff3ea2a8).withOpacity(0.5),
                          width: 2.5,
                        )),
                      ),
                    ),
                    SizedBox(height: height * 0.025,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password*",
                        hintStyle: GoogleFonts.montserrat(color: Colors.black38),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: const Color(0xff3ea2a8).withOpacity(0.5),
                          width: 2.5,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: const Color(0xff3ea2a8).withOpacity(0.5),
                          width: 2.5,
                        )),
                      ),
                    ),
                    SizedBox(height: height * 0.03,),
                    SizedBox(
                      width: double.infinity,
                      height: 56.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3ea2ab),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0)),
                        ),
                        child: const Text("Log in"),
                      ),
                    ),
                    SizedBox(height: height * 0.025,),
                    SizedBox(
                      width: double.infinity,
                      height: 56.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0)),
                        ),
                        child: const Text("Sign up"),
                      ),
                    ),
                    SizedBox(height: height * 0.03,),
                    Center(
                      child: Text(
                        "Forgot username or password?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03,),
                    Center(
                      child: Text(
                        "By proceeding you also agree to the Terms of",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Service and Privacy Policy",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
