import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            offset: const Offset(4, 4),
            blurRadius: 16.0,
          )
        ],
      ),
      child: Row(
        children: [
          Image.network(
            "https://cdn.discordapp.com/attachments/1047343468667744298/1068706182463770665/unknown.png",
            height: 62.0,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Block C Benyamin dfd lorem ipsum",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 15.0,
                    color: const Color(0xff2a4055),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Desa Majamundur",
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
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "05, Sep 2021",
                style: GoogleFonts.poppins(
                  color: const Color(0xff2a4055).withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "\$30.00",
                style: GoogleFonts.poppins(
                  color: const Color(0xff43b995),
                  fontWeight: FontWeight.w700,
                  fontSize: 13.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
