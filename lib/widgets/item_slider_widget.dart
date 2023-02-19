import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSliderWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.38,
      margin: EdgeInsets.only(right: 16.0),
      // color: Colors.amber,
      child: Column(
        children: [
          Container(
            width: width * 0.40,
            height: height * 0.16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://www.google.com/maps/d/u/0/thumbnail?mid=1hOd-ZE40lXimkmQ-Ywb3CBHmgSU&hl=en_US",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Text(
                  "Block C Benyamin dfd lorem ipsum",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff2a4055),
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  "Av. Lima 123 - Cayma - Arequipa",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff2a4055).withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                      "Open ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff43b995),
                        fontWeight: FontWeight.w700,
                        fontSize: 13.0,
                      ),
                    ),
                    Text(
                      "07:00 - 22:00",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff2a4055).withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}