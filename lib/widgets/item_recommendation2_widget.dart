import 'package:flutter/material.dart';

class ItemRecommendation2Widget extends StatelessWidget {
  String imageUrl;
  String title;
  String rating;
  String location;

  ItemRecommendation2Widget({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              offset: const Offset(4, 4),
              blurRadius: 14,
            )
          ]),
      child: Row(
        children: [
          Container(
            height: 76,
            width: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl)),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                  height: 1.2,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16.0,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16.0,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16.0,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black38.withOpacity(0.1),
                    size: 16.0,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(
                      color: Colors.black38,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4.0,
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
              )
            ],
          )
        ],
      ),
    );
  }
}
