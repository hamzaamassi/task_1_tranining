import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_1/routes/app_pages.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 22),
              child: SvgPicture.asset(
                'assets/icons/share.svg',
                width: 19,
                height: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0XFF333742),
      ),
      backgroundColor: const Color(0XFF333742),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: 18,
            left: 12,
            child: Text('PULSE 3D \nWireless Headset',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Positioned(
            top: 121,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 645,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Color(0XFF454D5A),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 21, left: 17.4, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: .5,
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () => {},
                                  child: SvgPicture.asset(
                                    'assets/icons/eye.svg',
                                    width: 20,
                                    height: 11,
                                  )),
                              const SizedBox(height: 14),
                              const Text("1.5K",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 27),
                              GestureDetector(
                                  onTap: () => {},
                                  child: SvgPicture.asset(
                                    'assets/icons/full_fav.svg',
                                    width: 14,
                                    height: 12,
                                  )),
                              const SizedBox(height: 14),
                              const Text("212",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 27),
                              GestureDetector(
                                onTap: () => Get.toNamed(Routes.favorite),
                                child: SvgPicture.asset(
                                  'assets/icons/full_cart.svg',
                                  width: 10,
                                  height: 13,
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                "120",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(
                              color: const Color(0XFF333742),
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            children: [
                              const Text(
                                "4.6  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                  onTap: () =>
                                      Get.snackbar("Star", "Star Rate"),
                                  child: SvgPicture.asset(
                                    'assets/icons/star.svg',
                                    width: 20,
                                    height: 17,
                                    color: const Color(0XFFFDD14B),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 107,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '\$180.99',
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 18),
                            ),
                            Text(
                              '\$150.99',
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          width: 53,
                          height: 29,
                          decoration: BoxDecoration(
                              color: const Color(0XFF343743),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Center(
                            child: Text(
                              "24%",
                              style: TextStyle(
                                  color: Color(0XFF6AED8A), fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Opacity(
                      opacity: .7,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.bus_alert_sharp,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(width: 11),
                              Text(
                                "Prices incl. VAT. ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "plus shipping costs",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              )
                            ],
                          ),
                          const SizedBox(height: 9),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor, Aenean massa.",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Text("Choose Color",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0XFFFFFFFF), width: 1),
                            color: const Color(0XFF333742),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0XFFFFFFFF), width: 1),
                            color: const Color(0XFFFFFFFF),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0XFFFFFFFF), width: 1),
                            color: const Color(0XFFED5454),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 85,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/head_phone.png",
                  height: 267,
                  width: 267,
                ),
                const SizedBox(height: 32),
                GestureDetector(
                  onTap: () => Get.snackbar("Page", "Page view"),
                  child: SvgPicture.asset(
                    'assets/icons/page.svg',
                    width: 8,
                    height: 8,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ), //Done
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 96,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Color(0XFF333742),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  isFavorite
                      ? GestureDetector(
                          onTap: () => {
                            Get.snackbar("Removed", "Removed from favorites"),
                            setState(() {
                              isFavorite = !isFavorite;
                            })
                          },
                          child: SvgPicture.asset(
                            'assets/icons/full_fav_white.svg',
                            width: 20,
                            height: 17,
                            color: Colors.white,
                          ),
                        )
                      : GestureDetector(
                          onTap: () => {
                            Get.snackbar("Success", "Added to favorites"),
                            setState(() {
                              isFavorite = !isFavorite;
                            })
                          },
                          child: SvgPicture.asset(
                            'assets/icons/fav.svg',
                            width: 20,
                            height: 17,
                          ),
                        ),
                  GestureDetector(
                      onTap: () =>
                          Get.snackbar("Add To Cart", "Button Clicked"),
                      child: Container(
                        height: 50,
                        width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0XFF454D5A)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/sale.svg',
                              width: 20,
                              height: 17,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 18),
                            const Text("ADD TO CART",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ) //Done
        ],
      ),
    );
  }
}
