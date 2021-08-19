import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/statustile.dart';
import '../../data.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 29, 37, 1),
      body: ListView(
        children: [
          Stack(
            children: [
              StatusTile(
                {
                  'name': 'My Status',
                  'image': 'assets/images/6.png',
                  'time': 'Tap to add status update',
                },
              ),
              Positioned(
                bottom: 15,
                left: 55,
                child: CircleAvatar(
                  child: Icon(
                    Icons.add,
                    size: 13,
                  ),
                  backgroundColor: Color.fromRGBO(0, 176, 160, 1),
                  radius: 9,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              'Recent updates',
              style: TextStyle(
                color: Color.fromRGBO(158, 165, 173, 1),
              ),
            ),
          ),
          ...Data().recentStatusList.map((recentStatus) {
            return StatusTile(recentStatus);
          }).toList(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                color: Color.fromRGBO(158, 165, 173, 1),
              ),
            ),
          ),
          ...Data().viewedStatusList.map((viewedStatus) {
            return StatusTile(viewedStatus);
          }).toList(),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Color.fromRGBO(49, 60, 66, 1),
            child: Icon(
              Icons.edit,
              color: Color.fromRGBO(241, 241, 243, 1),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Color.fromRGBO(0, 176, 156, 1),
            onPressed: () {},
            child: Icon(
              FontAwesomeIcons.camera,
              color: Color.fromRGBO(251, 255, 250, 1),
            ),
          ),
        ],
      ),
    );
  }
}
