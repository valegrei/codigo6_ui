import 'package:codigo6_ui/widgets/item_recommendation_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/item_category_widget.dart';
import '../widgets/item_recommendation2_widget.dart';

class Example2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9fbfc),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 16.0,
                                    color: const Color(0xff349dfd).withOpacity(0.5),
                                  ),
                                  const Text(
                                    "Location",
                                    style: TextStyle(
                                      color: Color(0xffc6c6c6),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "Purbalingga, Jawa Tengan",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color(0xff2b333f),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: Stack(
                              children: [
                                const Icon(
                                  Icons.notifications,
                                  size: 24.0,
                                  color: Color(0xffc6c6c6),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 12.0,
                            offset: const Offset(4, 4),
                          ),
                        ]),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: const Icon(
                              Icons.search,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      const Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            ItemCategoryWidget(
                              title: "House",
                              iconPath: "assets/icons/home.svg",
                              selected: true,
                            ),
                            ItemCategoryWidget(
                              title: "Hotel",
                              iconPath: "assets/icons/city.svg",
                            ),
                            ItemCategoryWidget(
                              title: "Apartment",
                              iconPath: "assets/icons/house.svg",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "Recommendation",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            ItemRecommendationWidget(
                              imageUrl:
                                  "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              title: "Minimalist House",
                              priceMonth: "\$734",
                              rating: "4.5",
                              location: "Padamara, Jawa Tengah",
                            ),
                            ItemRecommendationWidget(
                              imageUrl:
                                  "https://images.pexels.com/photos/323775/pexels-photo-323775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              title: "Beach House",
                              priceMonth: "\$500",
                              rating: "4.4",
                              location: "",
                            ),
                            ItemRecommendationWidget(
                              imageUrl:
                                  "https://images.pexels.com/photos/2587054/pexels-photo-2587054.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              title: "Mansión de playa",
                              priceMonth: "\$734",
                              rating: "4.5",
                              location: "Country Club, Santa Rosa",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "Recommendation",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ItemRecommendation2Widget(
                        imageUrl:
                            "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        title: "Pandaran House",
                        rating: "4.5",
                        location: "Kalimanah, Purballingga",
                      ),
                      ItemRecommendation2Widget(
                        imageUrl:
                            "https://images.pexels.com/photos/221540/pexels-photo-221540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        title: "Casa de Campo",
                        rating: "4.0",
                        location: "Canta, Lima",
                      ),
                      ItemRecommendation2Widget(
                        imageUrl:
                            "https://images.pexels.com/photos/2510067/pexels-photo-2510067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        title: "Casita con huerta",
                        rating: "4.5",
                        location: "Moro, Ancash",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                height: 60.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.blue
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.home_filled,color: Colors.white,),
                    Icon(Icons.shopping_cart,color: Colors.white38,),
                    Icon(Icons.bookmark,color: Colors.white38,),
                    Icon(Icons.person,color: Colors.white38,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
