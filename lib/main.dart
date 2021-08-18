import 'package:flutter/material.dart';
import 'package:os_folio/OS/Windows.dart';

void main() => runApp(OSFolio());

class OSFolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints cons) {
            if (cons.minWidth <= 1200) {
              return Text("mobile");
            } else {
              return Windows();
            }
          },
        ));
  }
}
