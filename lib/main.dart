import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Support Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final Uri _emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'test@example.com',
                  queryParameters: {'subject': 'Greetings!!'});

              launch(_emailLaunchUri.toString());
            },
            child: Text('SEND MAIL'),
          ),
        ),
      ),
    );
  }
}
