import 'package:color/condition.dart';
import 'package:flutter/material.dart';

import 'color_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.5)
                    ], begin: Alignment.bottomRight)),
                child: const Text('Color Screen',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ))),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          children: colorsList
              .map((colorItem) =>
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ColorScreen(colorItem)));
                },
                child: Container(
                    margin: const EdgeInsets.only(
                        top: 5, left: 5, right: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: colorItem,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(5, 5),
                              color: Colors.grey,
                              blurRadius: 4)
                        ])),
              ))
              .toList(),
        ),
      ),
    );
  }
}
