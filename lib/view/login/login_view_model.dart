import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';

class LoginViewModel extends ChangeNotifier {
  final TextEditingController phoneController = TextEditingController();
  Country? _country;

  Country? get country => _country;

  final _appRouter = locator<AppRouter>();

  void setCountry(Country country) {
    _country = country;
    notifyListeners();
    print(_country?.name);
  }

  void navigateToPhone() {
    _appRouter.push(const PhoneRoute());
    print('Navigating to phone view...');
  }

  String? validateContactNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Contact number is required';
    }
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Invalid contact number';
    }
    return null;
  }
}
