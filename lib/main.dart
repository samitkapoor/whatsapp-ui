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
            backgroundColor: Color(0xff1F2C34),
            title: Text(
              'WhatsApp',
              style: TextStyle(
                color: Color(0xff7a8a94),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            actions: [
              Icon(
                Icons.search_rounded,
                color: Color(0xff7a8a94),
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
              indicatorColor: Color(0xff04a683),
              unselectedLabelColor: Color(0xff7a8a94),
              labelColor: Color(0xff04a683),
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
