import 'package:flutter/material.dart';

class StatusTile extends StatelessWidget {
  var viewedStatus;

  StatusTile(this.viewedStatus);

  @override
  Widget build(BuildContext context) {
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
                    viewedStatus['image'].toString(),
                  ),
                  radius: 25,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    viewedStatus['name'].toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(207, 216, 221, 1),
                    ),
                  ),
                  Text(
                    viewedStatus['time'].toString(),
                    style: TextStyle(
                      color: Color.fromRGBO(136, 145, 150, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
