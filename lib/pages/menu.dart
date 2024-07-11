import 'package:flutter/material.dart';
import 'package:keysitech/services/product.dart';
import 'package:keysitech/services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  List products = <Product>[
    Product(productName: "The Rain in Espana", price: 800.00),
    Product(productName: "Safe Skies,Archer", price: 750.00),
    Product(productName: "Chasing in the Wild", price: 850.00),
    Product(productName: "Golden Scenery of Tomorrow", price: 800.00),
    Product(productName: "Avenues of Diamonds", price: 950.00),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.black,
          title: Text(
            'Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: products.map((product) => MenuCard(product: product)).toList(),
          ),
        )
    );
  }
}