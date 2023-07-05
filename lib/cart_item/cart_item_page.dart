import 'package:flutter/material.dart';

class CartItemPage extends StatelessWidget {
  const CartItemPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF333742),
        appBar: AppBar(
          title: const Text('Cart Item',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          backgroundColor: const Color(0XFF333742),
          elevation: 0,
        ),
      body: Container()
    );
  }
}
