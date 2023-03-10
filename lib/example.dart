// ignore_for_file: avoid_print
// import 'package:http/http.dart' as http;
// import 'package:oauth2_client/google_oauth2_client.dart';
// import 'package:oauth2_client/oauth2_helper.dart';

// class Oauth2ClientExample {
//   Oauth2ClientExample();
//
//   Future<void> fetchFiles() async {
//     var hlp = OAuth2Helper(
//       GoogleOAuth2Client(
//           redirectUri: 'com.teranet.app:/oauth2redirect',
//           customUriScheme: 'com.teranet.app'),
//       grantType: OAuth2Helper.authorizationCode,
//       clientId: 'XXX-XXX-XXX',
//       clientSecret: 'XXX-XXX-XXX',
//       scopes: ['https://www.googleapis.com/auth/drive.readonly'],
//     );
//
//     var resp = await hlp.get('https://www.googleapis.com/drive/v3/files');
//
//     print(resp.body);
//   }
// }



//Instantiate an OAuth2Client...
// GoogleOAuth2Client client = GoogleOAuth2Client(
//   customUriScheme: 'my.test.app', //Must correspond to the AndroidManifest's "android:scheme" attribute
//   redirectUri: 'my.test.app:/oauth2redirect', //Can be any URI, but the scheme part must correspond to the customeUriScheme
// );

//Then, instantiate the helper passing the previously instantiated client
// OAuth2Helper oauth2Helper = OAuth2Helper(client,
//     grantType: OAuth2Helper.authorizationCode,
//     clientId: 'your_client_id',
//     clientSecret: 'your_client_secret',
//     scopes: ['https://www.googleapis.com/auth/drive.readonly']);