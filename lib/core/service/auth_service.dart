import 'package:google_sign_in/google_sign_in.dart';
import 'package:nectar/core/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final user = supabase.auth.currentUser;

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

  Future<void> signOut() async {
    await supabase.auth.signOut();
    print('Signing out...');
  }

  Future<AuthResponse> googleSignIn() async {
    /// Web Client ID that you registered with Google Cloud.
    const webClientId =
        '405659510505-v0tht7fprcmtscorki7cjgpbeuqnou1j.apps.googleusercontent.com';

    /// iOS Client ID that you registered with Google Cloud.
    const iosClientId =
        '405659510505-esvd17m8cr7gf7f9tpmi7go71qnhug8g.apps.googleusercontent.com';

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: iosClientId,
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    return supabase.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }

  Future<void> signInWithDiscord() async {
    // await supabase.auth.signInWithOAuth(OAuthProvider.discord);
    final data = await supabase.auth.signInWithOAuth(
      OAuthProvider.discord,
    );
    print(data);
  }
}
