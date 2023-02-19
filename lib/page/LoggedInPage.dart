import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oauth_app/api/Google-signIn-api.dart';
import 'package:oauth_app/main.dart';

class LoggedInPage extends StatelessWidget {
  final GoogleSignInAccount user;
  final GoogleSignInApi googleSignInApi;

  const LoggedInPage(
      {Key? key, required this.user, required this.googleSignInApi})
      : super(key: key);

  // Future<String?> _getTokenId() async {
  //   try {
  //     final GoogleSignInAuthentication googleAuth = await user.authentication;
  //     final String? idToken = googleAuth.idToken;
  //     // setState(() {
  //     //   _idToken = idToken;
  //     // });
  //     return idToken;
  //   } catch (error) {
  //     print('Error signing in: $error');
  //   }
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('logged In'),
          centerTitle: true,
          actions: [
            TextButton(
              child: const Text('Logout',
                  style: TextStyle(color: Colors.deepPurpleAccent)),
              onPressed: () async {
                await googleSignInApi.logout();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ));
              },
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blueGrey.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'profile',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 32),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.photoUrl!),
              ),
              const SizedBox(height: 8),
              Text(
                'Name: ${user.displayName!}',
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                'Email: ${user.email}',
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 8),
              const Text(
                'ID token printed',
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
              // UserToken(user: user),
            ],
          ),
        ),
      );
}

// class UserToken extends StatefulWidget {
//
//   final GoogleSignInAccount user;
//
//   const UserToken({Key? key, required this.user}) : super(key: key);
//
//
//   @override
//   UserTokenState createState() => UserTokenState();
// }
//
// class UserTokenState extends State<UserToken> {
//
//   String? _idToken;
//
//   Future<void> _getTokenId() async {
//     try {
//       final GoogleSignInAuthentication googleAuth = await widget.user
//           .authentication;
//       final String? idToken = googleAuth.idToken;
//       print(idToken);
//       setState(() {
//         _idToken = idToken;
//       });
//     } catch (error) {
//       print('Error signing in: $error');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'ID Token: ${_idToken ?? ''}',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             FloatingActionButton(
//               onPressed: _getTokenId,
//               tooltip: 'Sign in with Google',
//               child: Icon(Icons.account_circle),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
