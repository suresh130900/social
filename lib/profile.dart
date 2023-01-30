import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social/home.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Text("Hello Suresh"),
      ),
    );
  }
}
