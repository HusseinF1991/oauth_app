import 'dart:io';
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
    Uri.parse("http://192.168.2.58:3001/api/googleAuthenticated"),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: idToken
    },
  );
}