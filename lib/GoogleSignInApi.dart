import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  // static final _googleSignIn = GoogleSignIn();

  // static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
  //
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  static Future<void> handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }
}