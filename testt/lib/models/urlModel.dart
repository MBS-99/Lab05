import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com');
final Uri Instagram_url = Uri.parse('https://www.instagram.com');

Future<void> Facebook_Function() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> Instagram_Function() async {
  if (!await launchUrl(Instagram_url)) {
    throw 'Could not launch $Instagram_url';
  }
}

class UrlClass extends StatelessWidget {
  UrlClass(
      {required this.platformTitle,
      required this.platformIcone,
      required this.platformSubTitle,
      required this.my_function});

  String? platformTitle;
  String? platformSubTitle;
  IconData? platformIcone;

  Function()? my_function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: my_function,
      child: Container(
          child: ListTile(
        title: Text("$platformTitle"),
        subtitle: Text("$platformSubTitle"),
        leading: Icon(platformIcone),
      )),
    );
  }
}
