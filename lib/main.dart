import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './screens/calls.dart';
import './screens/chats.dart';
import './screens/seflie.dart';
import './screens/status.dart';
import './widgets/popmenubutton.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(35, 45, 54, 1),
            title: Text(
              'WhatsApp',
              style: TextStyle(
                color: Color.fromRGBO(148, 153, 159, 1),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            actions: [
              Icon(
                Icons.search_rounded,
                color: Color.fromRGBO(149, 158, 166, 1),
              ),
              SizedBox(
                width: 10,
              ),
              PopMenuButtonWidget(),
              SizedBox(
                width: 5,
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Color.fromRGBO(17, 154, 142, 1),
              unselectedLabelColor: Color.fromRGBO(158, 167, 172, 1),
              labelColor: Colors.teal[400],
              tabs: [
                Container(
                  child: Tab(
                    child: Icon(
                      FontAwesomeIcons.camera,
                      size: 18,
                    ),
                  ),
                ),
                Container(
                  width: 85,
                  child: Tab(
                    child: Text(
                      'CHATS',
                    ),
                  ),
                ),
                Container(
                  width: 85,
                  child: Tab(
                    child: Text(
                      'STATUS',
                    ),
                  ),
                ),
                Container(
                  width: 85,
                  child: Tab(
                    child: Text(
                      'CALLS',
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Selfie(),
              Chats(),
              Status(),
              Calls(),
            ],
          ),
        ),
      ),
    );
  }
}
