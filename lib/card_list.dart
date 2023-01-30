import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class caard_list_ui extends StatelessWidget {

  const caard_list_ui({Key? key, required this.name,required this.img}) : super(key: key);
  final String name;
  final String img;


  @override
  Widget build(BuildContext context) {

        return Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //     ),
          //     borderRadius: BorderRadius.all(Radius.circular(20))
          // ),
          height: 600,
          width: 400,
          child: Stack(
            children: [
            Image.network(img,
            height: 500,
            ),
              Positioned(
                bottom: 0,
                    child: Container(
                      width:400,
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        height: 100,
                        child:  Card(
                            color: Colors.black12,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                                  child: Text(name,style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                      ),
                        ),
                      ),
            ],
          ),
        );
  }
}
