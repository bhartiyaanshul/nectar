import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  final Color color;
  const CategoryCard({super.key, required this.imageUrl, required this.categoryName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color),
      ),
      width: 170,
      height: 200,
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(imageUrl, width: 100, height: 80)),
          const SizedBox(height: 25),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              categoryName,
              style: const TextStyle(
                  fontFamily: 'gilroy', fontSize: 16, color: Color(0xff181725)),
            ),
          ),
        ],
      ),
    );
  }
}