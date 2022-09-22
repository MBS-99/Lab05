import 'package:flutter/material.dart';

class itemModel extends StatelessWidget {
  itemModel(
      {required this.img_URL, required this.title, required this.subTitle});

  String? img_URL;
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        color: Color.fromARGB(255, 206, 121, 149),
      ),
      height: 373,
      child: Column(children: [
        Image.asset(
          "$img_URL",
          width: 300,
          height: 300,
        ),
        Divider(
          height: 1,
          color: Colors.blue,
          thickness: 2,
        ),
        ListTile(
          trailing: Icon(
            Icons.bookmark,
            color: Colors.blue,
            size: 35,
          ),
          leading: Icon(
            Icons.add,
            color: Colors.blue,
            size: 50,
          ),
          title: Text(
            "$title",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 27, 95, 150)),
          ),
          subtitle: Text("$subTitle"),
        )
      ]),
    );
  }
}
