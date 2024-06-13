import 'package:nectar/core/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {

  Future<void> signInWithOtp(String phoneNumber) async {
    await supabase.auth.signInWithOtp(
      phone: phoneNumber,
    );
    print('Signing in with OTP...');
  }

  Future<void> verifyOtp(String otp, String phoneNumber) async {
    print(otp);
    print(phoneNumber);
    final res = await supabase.auth.verifyOTP(
      type: OtpType.sms,
      token: otp,
      phone: phoneNumber,
    );
    print(res);
  }
}
