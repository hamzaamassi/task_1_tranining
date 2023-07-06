import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductFavored extends StatefulWidget {
  const ProductFavored({super.key});

  @override
  State<ProductFavored> createState() => _ProductFavoredState();
}

class _ProductFavoredState extends State<ProductFavored> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF333742),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: isFavorite
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
          )
        ],
        title: const Text('PULSE 3D Wireless Headset ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0XFF333742),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 8,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text('PULSE 3D\nWireless Headset ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const SizedBox(height: 10),
                const Opacity(
                  opacity: .5,
                  child: Text('Category Name ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: .5,
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () => {},
                              child: SvgPicture.asset(
                                'assets/icons/eye.svg',
                                width: 12,
                                height: 15,
                                color: Colors.white.withOpacity(.7),
                              )),
                          const SizedBox(width: 10),
                          const Text("1.5K",
                              style: TextStyle(color: Colors.white)),
                          const SizedBox(width: 27),
                          GestureDetector(
                              onTap: () => {},
                              child: SvgPicture.asset(
                                'assets/icons/full_fav.svg',
                                width: 12,
                                height: 15,
                                color: Colors.white.withOpacity(.7),
                              )),
                          const SizedBox(width: 10),
                          const Text(
                            "212",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 27),
                          GestureDetector(
                            onTap: () => {},
                            child: SvgPicture.asset(
                              'assets/icons/full_cart.svg',
                              width: 12,
                              height: 15,
                              color: Colors.white.withOpacity(.7),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "120",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Column(
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
                        const SizedBox(height: 10),
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
                        const SizedBox(height: 10),
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
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            child: Column(
              children: [
                Image.asset("assets/images/head_phone.png"),
                const SizedBox(height: 41),
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
          )
        ],
      ),
    );
  }
}
