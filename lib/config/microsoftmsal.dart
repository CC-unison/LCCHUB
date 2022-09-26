import 'dart:convert';
import 'dart:io';

import 'package:aad_oauth/model/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lcchub/main.dart';
import 'package:aad_oauth/aad_oauth.dart';
import 'package:http/http.dart' as http;

//import shared_preferences
import 'package:shared_preferences/shared_preferences.dart';

class LoginMicrosoft {
  //constructor recibe context
  BuildContext context;
  LoginMicrosoft({Key? key, required this.context});

  static Config config = Config(
    tenant: '67553645-0db3-4480-b127-6f819a79e367',
    clientId: '37b2c61a-111d-4988-b2c7-1735452e4999',
    scope: 'openid profile offline_access',
    redirectUri: kIsWeb
        ? 'http://localhost:19006/'
        : 'msauth://com.unison.lcchub/%2B6b3KMFVWdz22Fk5NKXhQZUiCWc%3D',
    navigatorKey: navigatorKey,
  );

  final AadOAuth oauth = AadOAuth(config);

  void showError(dynamic ex) {
    showMessage(ex.toString());
  }

  void showMessage(String text) {
    var alert = AlertDialog(content: Text(text), actions: <Widget>[
      TextButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.pop(context);
          })
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Future<Map<String, dynamic>> login() async {
    try {
      await oauth.login();
      var accessToken = await oauth.getAccessToken();
      Map<String, dynamic> data = await info(accessToken);
      return data;
      //return accessToken.toString();
    } catch (e) {
      showError(e);
      return {
        'error': 'error',
        'status': 'error',
      };
    }
  }

  Future<Map<String, dynamic>> info(accessToken) async {
    final graphResponse = await http.get(
        Uri.parse('https://graph.microsoft.com/v1.0/me'),
        headers: {HttpHeaders.authorizationHeader: "Bearer $accessToken"});
    final user = jsonDecode(graphResponse.body);
    Map<String, dynamic> data = {
      'status': 'success',
      'accessToken': accessToken,
      'name': user['displayName'],
      'email': user['mail'] ?? user['userPrincipalName'],
      'matricula': user['jobTitle'] == "Alumno"
          ? user['jobTitle'].toString().split("@")[0]
          : "error",
    };

    //save access token in local storage with shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('accessToken', accessToken);
    prefs.setString('name', user['displayName']);

    //await storage.write(key: 'accessToken', value: accessToken);

    return data;

    //  showMessage(
    //    'Hola ${user['displayName']}, has iniciado sesión correctamente con tu correo: ${user['mail']}');
  }

  void logout() async {
    //delete access token in local storage with shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('accessToken');
    prefs.remove('name');
    await oauth.logout();
    showMessage('¡Nos vemos pronto!');
  }
}
