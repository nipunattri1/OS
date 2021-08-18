import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:os_folio/Apps/Windows/Calender.dart';

class Windows extends StatefulWidget {
  const Windows({Key? key}) : super(key: key);

  @override
  _WindowsState createState() => _WindowsState();
}

class _WindowsState extends State<Windows> {
  Offset position = Offset(100, 100);
  bool calander = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network("assets/wallpaperflare.com_wallpaper.jpg",
                fit: BoxFit.cover),
          ),
          Column(
            children: [
              Expanded(child: Container()),
              Container(
                height: 55,
                width: double.infinity,
                color: Colors.white.withOpacity(.7),
                child: Row(
                  children: [
                    SvgPicture.network("assets/icons8-windows-11.svg"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child:
                            Image.network("assets/icons8-calendar-11-48.png"),
                        onTap: () => setState(() {
                          calander = !calander;
                        }),
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ],
          ),
          calander
              ? Positioned(
                  left: position.dx,
                  top: position.dy,
                  child: Draggable(
                    onDragEnd: (details) =>
                        setState(() => position = details.offset),
                    feedback: Material(child: Calender()),
                    child: Calender(),
                    childWhenDragging: Container(),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
