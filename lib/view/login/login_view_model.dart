
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginViewModel extends ChangeNotifier{
  final TextEditingController phoneController = TextEditingController();
  Country? _country;

  Country? get country => _country;

  void setCountry(Country country){
    _country = country;
    notifyListeners();
    print(_country?.name);
  }
}