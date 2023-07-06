// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_1/models/product.dart';

class GridProductPage extends StatefulWidget {
  const GridProductPage({
    super.key,
  });

  @override
  State<GridProductPage> createState() => _GridProductPageState();
}

class _GridProductPageState extends State<GridProductPage> {
  List<Product> productList = [
    Product('assets/images/product.png', 'Playstation 5', 'Sony', 890, 900, 4),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', 890, 900, 4),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', 890, 900, 4),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', 890, 900, 4),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', 890, 900, 4),
  ];
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 9),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 250,
        ),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildListItem(context, index);
        },
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      child: Container(
        width: 164,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xff454D5A),
        ),
        child: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Color(0xff4B535F),
                ),
                height: 168,
                width: 164,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff333742)),
                        child: Row(
                          children: [
                            Text(
                              "${product.starNum}  ",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                                child: SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  width: 20,
                                  height: 17,
                                  color: Color(0XFFFDD14B),
                                ))
                          ],
                        ),
                      ),
                      isFavorite
                          ? GestureDetector(
                              onTap: () {
                                Get.snackbar("Removed", "Removed from favorite");
                                setState(() {
                                  isFavorite = false;
                                });
                              },
                              child: SvgPicture.asset(
                                'assets/icons/full_fav_white.svg',
                                width: 20,
                                height: 17,
                                color: Colors.white,
                              ))
                          : GestureDetector(
                              onTap: () {
                                Get.snackbar("Success", "Added to favorite");
                                setState(() {
                                  isFavorite = true;
                                });
                              },
                              child: SvgPicture.asset(
                                'assets/icons/fav.svg',
                                width: 20,
                                height: 17,
                              ))
                    ],
                  ),
                ),
              )),
          Positioned(
              bottom: 7,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ ${product.cost}",
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "\$ ${product.realCost}",
                        style: const TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
            right: 9,
            top: 146,
            child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff333742)),
              child: GestureDetector(
                  onTap: () {
                    Get.snackbar("Success", "Added to cart item successfully");
                  },
                  child: SvgPicture.asset(
                    'assets/icons/sale.svg',
                    width: 15,
                    height: 15,
                    color: Colors.white,
                  )),
            ),
          ),
          Positioned(
              top: 51,
              bottom: 59,
              right: 37,
              child: Image.asset(
                'assets/images/head_phone.png',
                height: 140,
                width: 140,
              )),
        ]),
      ),
    );
  }
}
