// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:testt/screens/dicover.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 206, 121, 149),
          actions: [
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 220, 84, 129),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return Discover();
                      }),
                    ),
                  );
                },
                icon: Icon(Icons.menu),
                label: Text("dicover now"),
              ),
            )
          ],
          title: Row(
            children: [Text("Home Page"), Icon(Icons.home)],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/wq.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Weclome to Nova Fasion",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 220, 84, 129),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Find the latest fashion trends and enjoy pleanty of offers & discounts !",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 0, 38, 91)),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
