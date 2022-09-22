import 'package:flutter/material.dart';
import 'package:testt/models/itemModel.dart';
import 'package:testt/models/urlModel.dart';
import 'package:testt/screens/Home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 206, 121, 149),
          centerTitle: true,
          title: Text(
            "Nova Fasion",
            style: TextStyle(fontSize: 25),
          ),
          bottom: TabBar(tabs: [
            IconButton(onPressed: () {}, icon: Icon(Ionicons.shirt_outline)),
            IconButton(
                onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.userTie)),
            IconButton(onPressed: () {}, icon: Icon(Icons.phone))
          ]),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/img.jpg"), fit: BoxFit.cover),
          ),
          child: TabBarView(
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Shirts & Pants",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 12 JOD",
                      img_URL: "images/shirt1.jpg",
                      title: "Explosive Power T-shirt"),
                  SizedBox(
                    height: 30,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 9 JOD",
                      img_URL: "images/shirt4.jpg",
                      title: "Babolat Sport T-shirt"),
                  SizedBox(
                    height: 30,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 14 JOD",
                      img_URL: "images/shirt6.jpg",
                      title: "Beach White T-shirt"),
                  SizedBox(
                    height: 30,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 13 JOD",
                      img_URL: "images/short.jpg",
                      title: "Babolat Play Short")
                ],
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Jackets & Coats",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 24 JOD",
                      img_URL: "images/jacket11.png",
                      title: "Black Leather Jacket"),
                  SizedBox(
                    height: 30,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 32 JOD",
                      img_URL: "images/jacket22.png",
                      title: "Grey Leather Jacket"),
                  SizedBox(
                    height: 30,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 42 JOD",
                      img_URL: "images/jacket33.png",
                      title: "Winter Brown Jacket"),
                  SizedBox(
                    height: 30,
                  ),
                  itemModel(
                      subTitle: "Size: L,M,S - 52 JOD",
                      img_URL: "images/jacket44.png",
                      title: "Red Leather Jacket"),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Don't miss anything and follow us !",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 54, 51, 52)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  UrlClass(
                      my_function: Facebook_Function,
                      platformTitle: "Fcebook",
                      platformSubTitle: "join our facebook page",
                      platformIcone: Icons.facebook),
                  UrlClass(
                      my_function: Instagram_Function,
                      platformTitle: "Instagram",
                      platformSubTitle: "join our instagram page",
                      platformIcone: Ionicons.logo_instagram),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: ((context) {
                                return Home();
                              }),
                            ),
                          );
                        });
                      },
                      icon: Icon(Icons.home),
                      label: Text("Home Page"),
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        primary: Color.fromARGB(255, 206, 121, 149),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
