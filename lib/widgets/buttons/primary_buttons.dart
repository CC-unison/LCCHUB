import 'dart:convert';
import 'dart:io';

import 'package:aad_oauth/model/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lcchub/main.dart';
import 'package:lcchub/widgets/text_styles/primary_texts.dart';
import 'package:aad_oauth/aad_oauth.dart';
import 'package:http/http.dart' as http;

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButton();
}

class _LoginButton extends State<LoginButton> {
  static final Config config = Config(
    tenant: '67553645-0db3-4480-b127-6f819a79e367',
    clientId: '37b2c61a-111d-4988-b2c7-1735452e4999',
    scope: 'openid profile offline_access',
    redirectUri: kIsWeb
        ? 'http://localhost:19006/'
        : 'msauth://com.unison.lcchub/%2B6b3KMFVWdz22Fk5NKXhQZUiCWc%3D',
    navigatorKey: navigatorKey,
  );
  final AadOAuth oauth = AadOAuth(config);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {
        login();
      }),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      ),
      child: ButtonText("Iniciar sesión"),
    );
  }

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

  void login() async {
    try {
      await oauth.login();
      var accessToken = await oauth.getAccessToken();
      info(accessToken);
    } catch (e) {
      showError(e);
    }
  }

  void info(accessToken) async {
    final graphResponse = await http.get(
        Uri.parse('https://graph.microsoft.com/v1.0/me'),
        headers: {HttpHeaders.authorizationHeader: "Bearer $accessToken"});
    final user = jsonDecode(graphResponse.body);
    showMessage(
        'Hola ${user['displayName']}, has iniciado sesión correctamente con tu correo: ${user['mail']}');
  }

  void logout() async {
    await oauth.logout();
    showMessage('¡Nos vemos pronto!');
  }
}

class LoginButtonInvitado extends StatelessWidget {
  final String text;
  const LoginButtonInvitado({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (() {}),
      style: OutlinedButton.styleFrom(
        primary: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      ),
      child: ButtonText(text),
    );
  }
}
