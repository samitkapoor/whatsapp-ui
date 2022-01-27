import 'package:flutter/material.dart';

import '../data.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121B22),
      body: ListView(
        children: Data().callList.map((callData) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 15),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          callData['image'].toString(),
                        ),
                        radius: 25,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          callData['name'].toString(),
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(216, 223, 229, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              callData['icon1'] as dynamic,
                              color: callData['color'] as Color,
                              size: 15,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              callData['time'].toString(),
                              style: TextStyle(
                                color: Color.fromRGBO(151, 162, 168, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 18, 0),
                  child: Icon(
                    callData['icon2'] as dynamic,
                    color: Color.fromRGBO(0, 178, 154, 1),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff00a884),
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Color.fromRGBO(229, 233, 231, 1),
        ),
      ),
    );
  }
}
