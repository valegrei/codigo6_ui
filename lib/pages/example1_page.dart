import 'package:codigo6_ui/widgets/item_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/item_list_widget.dart';

class Example1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff0a4b4f),
                    Color(0xff05172a),
                  ],
                ),
              ),
              // height: MediaQuery.of(context).size.height *.3,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Parkirin",
                          style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text(
                              "24°C",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Image.asset(
                              "assets/images/cloud.png",
                              height: 28.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: width * 0.6,
                      ),
                      child: Text(
                        "Let's find a place for you",
                        style: GoogleFonts.poppins(
                            fontSize: 34.0,
                            color: Colors.white,
                            height: 1.15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Find parking place",
                              hintStyle: GoogleFonts.poppins(
                                color: const Color(0xff90969B),
                                fontSize: 14.0,
                              ),
                              prefixIcon: const Icon(Icons.search, size: 26.0),
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(14.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(14.0)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14.0,
                        ),
                        Container(
                            padding: EdgeInsets.all(18.0),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: const Icon(
                              Icons.filter_list_alt,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parking Near You",
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: const Color(0xff00162d),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                        // textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "View More",
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              color: Colors.amber,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.amber,
                            size: 16.0,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20.0,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Text(
                    "History Parking",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: const Color(0xff00162d),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                  ItemListWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
