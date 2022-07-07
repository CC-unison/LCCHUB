import 'dart:io';

import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'LCC-HUB'),
      navigatorKey: navigatorKey,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static final Config config = Config(
    tenant: '67553645-0db3-4480-b127-6f819a79e367',
    clientId: '37b2c61a-111d-4988-b2c7-1735452e4999',
    scope: 'openid profile offline_access',
    redirectUri: kIsWeb
        ? 'http://localhost:51561/'
        : 'msauth://com.unison.lcchub/%2B6b3KMFVWdz22Fk5NKXhQZUiCWc%3D',
    navigatorKey: navigatorKey,
  );
  final AadOAuth oauth = AadOAuth(config);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Por favor inicia sesión.',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.launch),
            title: Text('Iniciar sesión como alumno'),
            onTap: () {
              login();
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Cerrar sesión'),
            onTap: () {
              logout();
            },
          ),
        ],
      ),
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

      showMessage(
          'Hola alumno, has iniciado sesión correctamente: $accessToken');
    } catch (e) {
      showError(e);
    }
  }

  void info(accessToken) async {
    final graphResponse = await http.get(
        Uri.parse('https://graph.microsoft.com/v1.0/me'),
        headers: {HttpHeaders.authorizationHeader: "Bearer $accessToken"});
    print(graphResponse.body);
  }

  void logout() async {
    await oauth.logout();
    showMessage('¡Nos vemos pronto!');
  }
}
