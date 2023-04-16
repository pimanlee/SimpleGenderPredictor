// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:guesgender/src/services/fetchdata.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var object;
  String? variable = 'Waiting data...';
  String value = '';
  @override
  runapi() async {
    object = await Fetchdata().getdatas(value);
    setState(() {
      // print(object.gender);
      if (object.gender == null) {
        variable =' No Gender Found';
      } else {
        variable = object.gender;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Piman Gender Predictor',
                      style: TextStyle(fontSize: 30)),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      onChanged: (text) {
                        setState(() {
                          if (text.isEmpty) {
                            variable = 'write name to check Gender';
                          } else {
                            value = text;
                            variable = 'wow! write any name ☺️';
                          
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Text('$variable'),
                  SizedBox(height: 30),
                  //button
                  ElevatedButton(
                    onPressed: () {
                      // value = 'john';
                      runapi();
                    },
                    child: Text(
                      'Get $value Gender',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
