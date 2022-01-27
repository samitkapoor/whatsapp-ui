import 'package:flutter/material.dart';

import '../data.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121B22),
      body: ListView(
        children: [
          ...Data().ChatList.map((chat) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      chat['image'].toString(),
                    ),
                    radius: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 90,
                        child: Row(
                          children: [
                            Text(
                              chat['name'].toString(),
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(207, 212, 218, 1),
                              ),
                            ),
                            Spacer(),
                            Text(
                              chat['time'].toString(),
                              style: TextStyle(
                                color: Color.fromRGBO(140, 151, 157, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        chat['message'].toString(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(109, 119, 125, 1),
                        ),
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff00a884),
        child: Icon(
          Icons.message,
          color: Color.fromRGBO(252, 255, 253, 1),
        ),
      ),
    );
  }
}
