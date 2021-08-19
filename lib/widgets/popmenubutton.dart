import 'package:flutter/material.dart';

class PopMenuButtonWidget extends StatelessWidget {
  PopupMenuItem getItem(String message){
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
      color: Color.fromRGBO(49, 60, 66, 1),
      icon: Icon(
        Icons.more_vert,
        color: Color.fromRGBO(158, 167, 172, 1),
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
