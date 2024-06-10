import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:nectar/core/model/item.dart';

class CartViewModel extends ChangeNotifier {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  int get totalPrice => _items.length * 42;

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  void remove(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}

