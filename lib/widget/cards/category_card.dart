import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  const CategoryCard({super.key, required this.imageUrl, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xffE2E2E2)),
      ),
      width: 170,
      height: 190,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(imageUrl!, width: 100, height: 80)),
          const SizedBox(height: 25),
          Text(
            categoryName!,
            style: const TextStyle(
                fontFamily: 'gilroy', fontSize: 16, color: Color(0xff181725)),
          ),
        ],
      ),
    );
  }
}