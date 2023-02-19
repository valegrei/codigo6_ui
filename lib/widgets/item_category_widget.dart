
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCategoryWidget extends StatelessWidget {
  String title;
  String iconPath;
  bool selected;
  ItemCategoryWidget({
    Key? key,
    required this.title,
    required this.iconPath,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          color: selected
              ? const Color(0xff349ded).withOpacity(0.15)
              : const Color(0xffeeeeee).withOpacity(0.5),
          borderRadius: BorderRadius.circular(8.0)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            //"assets/icons/home.svg",
            iconPath,
            color: const Color(0xff349ded),
            height: 20.0,
          ),
          const SizedBox(width: 6.0,),
          Text(
            // "House",
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: selected ? Colors.black : Colors.black38
            ),
          ),
        ],
      ),
    );
  }
}
