import 'package:flutter/material.dart';

class PopMenuButtonWidget extends StatelessWidget {
  PopupMenuItem getItem(String message) {
    return PopupMenuItem(
      child: Container(
        child: Text(
          message,
          style: TextStyle(
            color: Color.fromRGBO(239, 244, 247, 1),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Color.fromRGBO(35, 50, 57, 1),
      icon: Icon(
        Icons.more_vert,
        color: Color(0xff7a8a94),
      ),
      itemBuilder: (context) {
        return [
          getItem('New group'),
          getItem('New broadcast'),
          getItem('Linked devices'),
          getItem('Starred messages'),
          getItem('Payments'),
          getItem('Settings'),
        ];
      },
    );
  }
}
