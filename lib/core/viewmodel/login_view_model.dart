import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/service/auth_service.dart';

class LoginViewModel extends ChangeNotifier {
  final _auth = locator<AuthService>();
  // final TextEditingController phoneController = TextEditingController();
  Country? _country;
  List<String> zones = ['Zone 1', 'Zone 2', 'Zone 3', 'Zone 4', 'Zone 5'];
  Map<String, dynamic> areas = {
    'Zone 1': ['Area 1','Area 2','Area 3','Area 4','Area 5'],
    'Zone 2': ['Area 1','Area 2','Area 3','Area 4','Area 5'],
    'Zone 3': ['Area 1','Area 2','Area 3','Area 4','Area 5'],
    'Zone 4': ['Area 1','Area 2','Area 3','Area 4','Area 5'],
    'Zone 5': ['Area 1','Area 2','Area 3','Area 4','Area 5']
  };
  // List<String> areas = ['Area 1','Area 2','Area 3','Area 4','Area 5'];
  String _zone = 'Zone 1';
  String _area = 'Area 1';

  String get zone => _zone;
  String get area => _area;
  Country? get country => _country;
  String _phoneNumber = '';
  String _otp = '';

  final TextEditingController zoneController = TextEditingController();
  final TextEditingController areaController = TextEditingController();

  final _appRouter = locator<AppRouter>();

  void setCountry(Country country) {
    _country = country;
    notifyListeners();
    print(_country?.name);
  }

  void setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  void setOTP(String otp) {
    _otp = otp;
    notifyListeners();
  }

  void navigateToPhone() {
    _appRouter.push(PhoneRoute());
    print('Navigating to phone view...');
  }

  void navigateToOtpVerification() {
    _appRouter.push(OtpVerificationRoute());
    print('Navigating to phone view...');
  }

  Future<void> signinWuthOtp() async {
    await _auth.signInWithOtp(country!.phoneCode + _phoneNumber);
    print(country!.phoneCode + _phoneNumber);
    print('Signing in with OTP...');
  }

  Future<void> verifyOtp() async {
    await _auth.verifyOtp(_otp,country!.phoneCode + _phoneNumber);
    print('Verifying OTP...');
  }

  void navigateToLocation() {
    _appRouter.push(LocationRoute());
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

  void setZone(String zone){
    _zone = zone;
    zoneController.text = zone;
    notifyListeners();
  }

  void setArea(String area){
    _area = area;
    areaController.text = area;
    notifyListeners();
  }
}
