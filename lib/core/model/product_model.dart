// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:nectar/core/model/brand_model.dart';
import 'package:nectar/core/model/category_model.dart';

class ProductModel {
  final int id;
  final String name;
  final BrandModel brand;
  final int brand_id;
  final CategoryModel category;
  final int category_id;
  final double price;
  final List<String> images;
  final Map<String, dynamic> specifications;
  final String description;
  final DateTime created_at;
  final String tag;
  ProductModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.brand_id,
    required this.category,
    required this.category_id,
    required this.price,
    required this.images,
    required this.specifications,
    required this.description,
    required this.created_at,
    required this.tag,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    BrandModel? brand,
    int? brand_id,
    CategoryModel? category,
    int? category_id,
    double? price,
    List<String>? images,
    Map<String, dynamic>? specifications,
    String? description,
    DateTime? created_at,
    String? tag,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      brand_id: brand_id ?? this.brand_id,
      category: category ?? this.category,
      category_id: category_id ?? this.category_id,
      price: price ?? this.price,
      images: images ?? this.images,
      specifications: specifications ?? this.specifications,
      description: description ?? this.description,
      created_at: created_at ?? this.created_at,
      tag: tag ?? this.tag,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'brand': brand.toMap(),
      'brand_id': brand_id,
      'category': category.toMap(),
      'category_id': category_id,
      'price': price,
      'images': images,
      'specifications': specifications,
      'description': description,
      'created_at': created_at.millisecondsSinceEpoch,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      name: map['name'] as String,
      brand: BrandModel.fromMap(map['brand'] as Map<String,dynamic>),
      brand_id: map['brand_id'] as int,
      category: CategoryModel.fromMap(map['category'] as Map<String,dynamic>),
      category_id: map['category_id'] as int,
      price: map['price'] as double,
      images: List<String>.from((map['images'])),
      specifications: Map<String, dynamic>.from((map['specifications'] as Map<String, dynamic>)),
      description: map['description'] as String,
      created_at: DateTime.parse(map['created_at']),
      tag: map['tag'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, brand: $brand, brand_id: $brand_id, category: $category, category_id: $category_id, price: $price, images: $images, specifications: $specifications, description: $description, created_at: $created_at, tag: $tag)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.brand == brand &&
      other.brand_id == brand_id &&
      other.category == category &&
      other.category_id == category_id &&
      other.price == price &&
      listEquals(other.images, images) &&
      mapEquals(other.specifications, specifications) &&
      other.description == description &&
      other.created_at == created_at &&
      other.tag == tag;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      brand.hashCode ^
      brand_id.hashCode ^
      category.hashCode ^
      category_id.hashCode ^
      price.hashCode ^
      images.hashCode ^
      specifications.hashCode ^
      description.hashCode ^
      created_at.hashCode ^
      tag.hashCode;
  }
}
