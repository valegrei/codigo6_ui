import 'package:flutter/material.dart';

class ItemRecommendationWidget extends StatelessWidget {
  String imageUrl;
  String title;
  String priceMonth;
  String rating;
  String location;

  ItemRecommendationWidget({
    required this.imageUrl,
    required this.title,
    required this.priceMonth,
    required this.rating,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(right: 10.0,),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              offset: const Offset(4, 4),
              blurRadius: 12.0,
            ),
          ]),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width * 0.6,
        ),
        child: Column(
          children: [
            Container(
              width: width * 0.6,
              height: height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                      height: 1.2,
                    ),
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16.0,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            priceMonth,
                            style: const TextStyle(
                              color: Color(0xff349ded),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            "/Month",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.black38,
                            size: 14.0,
                          ),
                          Text(
                            location,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black38,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color(0xffeeeeee).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(6.0)),
                  child: const Icon(
                    Icons.bookmark,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
