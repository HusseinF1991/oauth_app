import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class SendTokenToServer{

  String idToken;
  // Map<String, String> headers = {
  //   HttpHeaders.contentTypeHeader: 'application/json',
  //   HttpHeaders.acceptHeader: 'application/json',
  //   HttpHeaders.authorizationHeader: this.idToken
  // };

  SendTokenToServer(this.idToken);



  Future<http.Response> response() =>  http.post(
    Uri.parse(dotenv.env['CREATE_USER_URI'] ?? ''),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: idToken
    },
  );
}