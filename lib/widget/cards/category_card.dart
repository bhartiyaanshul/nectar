import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/widget/supabase_image.dart';

enum CategoryStyle { horizontal, vertical }

class CategoryCard extends StatelessWidget {
  final CategoryStyle? _categoryStyle;
  final CategoryModel category;
  final Color color;
  final void Function()? onTap;
  const CategoryCard.vertical(
      {super.key, required this.color, this.onTap, required this.category})
      : _categoryStyle = CategoryStyle.vertical;
  const CategoryCard.horizontal(
      {super.key, required this.color, this.onTap, required this.category})
      : _categoryStyle = CategoryStyle.horizontal;

  @override
  Widget build(BuildContext context) {
    final baseUrl = 'https://dxbfneyqkwbswxshogoy.supabase.co/storage/v1/object/public/content/';
    return _categoryStyle == CategoryStyle.vertical
        ? Material(
          child: InkWell(
            onTap: onTap,
            child: Container(
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
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
                    Center(child: SupabaseImage(path: category.image, height: 80)),
                    const SizedBox(height: 25),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        category.name,
                        style: const TextStyle(
                            fontFamily: 'gilroy',
                            fontSize: 16,
                            color: Color(0xff181725)),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        )
        : Material(
          child: InkWell(
            onTap: onTap,
            child: Container(
                decoration: BoxDecoration(
                  color: color.withOpacity(0.13),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 250,
                height: 105,
                padding: const EdgeInsets.all(15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: SupabaseImage(path: category.image,height: 80)),
                    const SizedBox(height: 25),
                    Expanded(
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          category.name,
                          style: const TextStyle(
                              fontFamily: 'gilroy',
                              fontSize: 16,
                              color: Color(0xff181725)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        );
  }
}
