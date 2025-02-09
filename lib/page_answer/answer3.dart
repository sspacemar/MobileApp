import 'package:flutter/material.dart';

class ProductLayout extends StatelessWidget {
  const ProductLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Layout',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft, // จัดตำแหน่งให้อยู่ทางซ้าย
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[300], // มุมมน
              ),
              child: const Text(
                'Category: Electronics',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              Column(
                children: [
                  Image.network(
                    'https://media-cdn.bnn.in.th/411086/microsoft-surface-laptop-7-15ineli16512-win11-sc-thai-graphite-1-square_medium.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text('Laptop', style: TextStyle(fontSize: 14)),
                  const Text('999 THB', style: TextStyle(color: Colors.green)),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                children: [
                  Image.network(
                    'https://res.cloudinary.com/itcity-production/image/upload/f_jpg,q_80,w_1000/v1713863047/products/PRD202401005987/skus/nyrbbr0ggkzds8m8qmcm.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text('Smartphone', style: TextStyle(fontSize: 14)),
                  const Text('699 THB', style: TextStyle(color: Colors.green)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10),
              Column(
                children: [
                  Image.network(
                    'https://www.jib.co.th/img_master/product/original/2024062513153768228_1.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text('Tablet', style: TextStyle(fontSize: 14)),
                  const Text('499 THB', style: TextStyle(color: Colors.green)),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                children: [
                  Image.network(
                    'https://www.canon.com.au/-/media/images/canon/products/products-overview/dx-all-product-mirrorles-1200x1200.ashx?mw=600&hash=BD6C041D2C6A031FD670788F9D43BCED',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text('Camera', style: TextStyle(fontSize: 14)),
                  const Text('299 THB', style: TextStyle(color: Colors.green)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
