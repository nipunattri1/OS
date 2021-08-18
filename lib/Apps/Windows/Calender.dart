import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 1000,
      height: 600,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 25,
            color: Colors.grey.withOpacity(.3),
            child: Row(
              children: [
                Image.network("assets/icons8-calendar-11-48.png"),
                Text("Calendar"),
                Spacer(),
              ],
            ),
          ),
          AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
          ),
          Expanded(
            child: Center(
              child: Text("No Event Currently"),
            ),
          )
        ],
      ),
    );
  }
}
