import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:task_1/models/product.dart';
import 'package:task_1/routes/app_pages.dart';

class ProductsCategory extends StatefulWidget {
  const ProductsCategory({super.key});

  @override
  State<ProductsCategory> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductsCategory> {
  List<Product> productList = [
    Product('assets/images/product.png', 'Playstation 5', 'Sony', " 890", "900",
        "4", true),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', " 890", "900",
        "4", false),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', " 890", "900",
        "4", false),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', " 890", "900",
        "4", true),
    Product('assets/images/product.png', 'Playstation 5', 'Sony', " 890", "900",
        "4", true),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 284,
                  height: 50,
                  // padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color(0XFF454D5A),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    cursorColor: Colors.white,
                    onTapOutside: (event) =>
                        {FocusManager.instance.primaryFocus?.unfocus()},
                    // onChanged: controller.searchProducts,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      hintText: 'Search',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white.withOpacity(.5)),
                      suffixIcon: const Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () => {
                          Get.snackbar("Filter", "Open Filter"),
                          Get.toNamed(Routes.details)
                        },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0XFF454D5A),
                          borderRadius: BorderRadius.circular(8)),
                      child: SvgPicture.asset(
                        'assets/icons/filters.svg',
                        width: 20,
                        height: 17,
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 470,
            width: double.infinity,
            child: ScrollSnapList(
              itemBuilder: _buildListItem,
              itemCount: productList.length,
              itemSize: 310,
              onItemFocus: (index) => {},
              dynamicItemSize: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    bool? isFavorite = productList[index].favorite;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color(0XFF454D5A),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.type,
                      style: TextStyle(color: Colors.white.withOpacity(.7)),
                    ),
                    const SizedBox(width: 220),
                    isFavorite!
                        ? GestureDetector(
                            onTap: () => {
                              Get.snackbar("Removed", "Removed from favorites"),
                              setState(() {
                                productList[index].favorite = false;
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
                                productList[index].favorite = true;
                              })
                            },
                            child: SvgPicture.asset(
                              'assets/icons/fav.svg',
                              width: 20,
                              height: 17,
                            ),
                          ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  product.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15.6),
                Image(
                  image: AssetImage(
                    product.imagePath,
                  ),
                  height: 271,
                  width: 216,
                ),
                const SizedBox(height: 8),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                      ],
                    ),
                    const SizedBox(width: 98),
                    Container(
                      width: 138,
                      height: 40,
                      margin: const EdgeInsets.only(top: 15),
                      decoration: const BoxDecoration(
                          color: Color(0XFF707070),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ ${product.cost}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              '\$ ${product.realCost}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
