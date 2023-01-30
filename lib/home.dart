import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social/profile.dart';

import 'card_list.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var size, height, width;
  var data = [
    {
      "title": "Emma",
      "user_id": "@Emma12",
      "subtitle": "New Project Manager",
      "image":
          "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg",
    },
    {
      "title": "Emma",
      "user_id": "@Emma12",
      "subtitle": "New Project Manager",
      "image":
          "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg",
    },
    {
      "title": "Emma",
      "user_id": "@Emma12",
      "subtitle": "New Project Manager",
      "image":
          "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg",
    },
    {
      "title": "Emma",
      "user_id": "@Emma12",
      "subtitle": "New Project Manager",
      "image":
          "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg",
    },
    {
      "title": "Emma",
      "user_id": "@Emma12",
      "subtitle": "New Project Manager",
      "image":
          "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg",
    },
    {
      "title": "Emma",
      "user_id": "@Emma12",
      "subtitle": "New Project Manager",
      "image":
          "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg",
    },
    {
      "title": "Emma",
      "user_id": "@Emma12",
      "subtitle": "New Project Manager",
      "image":
          "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              "Morning!",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            Text(
              "Suresh Chaudhary",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/b/gateway-india-mumbai-gateway-india-arch-monument-built-th-century-mumbai-india-monument-was-138091856.jpg"),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_a_photo,
            ),
            color: Colors.black,
            padding: EdgeInsets.all(5.0),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_alert,
            ),
            color: Colors.black,
            padding: EdgeInsets.all(5.0),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  " Let's Make \n New Friends",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Expanded(
                  flex: 40,
                  child: Text(""),
                ),
                Expanded(
                  flex: 8,
                  child: IconButton(
                    onPressed: () {
                      print("Search is Pressed");
                    },
                    icon: Icon(
                      Icons.search_rounded,
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Row(
              children: <Widget>[
                Text(
                  "Discover Feed",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Expanded(
                  flex: 50,
                  child: Text(""),
                ),
                Expanded(
                  flex: 8,
                  child: IconButton(
                    onPressed: () {
                      print("Menu is pressed");
                    },
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                ),
              ],
            ),
            // Column(
            //   mainAxisSize: MainAxisSize.min,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     pageview(),
            //   ],
            // ),

            Column(
              children: <Widget>[
                Container(
                  height: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int i) {
                        return caard_list_ui(
                          name: data[i]["title"].toString(),
                          img: data[i]["image"].toString(),
                        );
                      }),
                ),
                //friends(),
              ],
            ),

            Row(
              children: <Widget>[
                Text(
                  "People Near You",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                Expanded(
                  flex: 40,
                  child: Text(""),
                ),
                Expanded(
                    flex: 8,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                        ))),
              ],
            ),

            Column(
              children: <Widget>[
                friends(),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
                print("Button is presses");
              },
              child: Text("Click Here"),
            ),
          ],
        ),
      ),
    );
  }

  Widget friends() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int i) {
          return Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: NetworkImage(data[i]["image"].toString()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  data[i]["title"].toString(),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  data[i]["user_id"].toString(),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
