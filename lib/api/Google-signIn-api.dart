import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {

  final _googleSignIn = GoogleSignIn(scopes: [
    'email', 'profile', 'openid'
  ] , clientId: dotenv.env['CLIENT_ID'] );

  Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
  Future logout() => _googleSignIn.disconnect();

  // static GoogleSignIn _googleSignIn = GoogleSignIn(
  //   scopes: [
  //     'email',
  //     'https://www.googleapis.com/auth/contacts.readonly',
  //   ],
  // );
  // static Future<void> handleSignIn() async {
  //   try {
  //     await _googleSignIn.signIn();
  //   } catch (error) {
  //     print(error);
  //   }
  // }
}