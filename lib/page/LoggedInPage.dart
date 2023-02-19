import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oauth_app/api/Google-signIn-api.dart';
import 'package:oauth_app/main.dart';

class LoggedInPage extends StatelessWidget {
  final GoogleSignInAccount user;

  const LoggedInPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: const Text('logged In'),
          centerTitle: true,
          actions: [
            TextButton(
              child: const Text('Logout'),
              onPressed: () async {
                await GoogleSignInApi.logout();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MyApp(),));
              },)
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blueGrey.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('profile', style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 32),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.photoUrl!),
              ),
              const SizedBox(height: 8),
              Text('Name: ${user.displayName!}',
                style: const TextStyle(color: Colors.white, fontSize: 14),),
              const SizedBox(height: 8),
              Text('Email: ${user.email}',
                style: const TextStyle(color: Colors.white, fontSize: 14),)
            ],
          ),
        ),
      );
}
