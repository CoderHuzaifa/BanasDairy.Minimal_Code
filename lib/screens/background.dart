import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/topimg.png",
              width: size.width * 1,
            ),
          ),
          Positioned(
            child: Image.asset("assets/images/logonew.png"),
            width: size.width * 1,
          ),
          Positioned(
            bottom: 0,
            child: Image.asset("assets/images/bottomimg.png"),
            width: size.width * 1,
          ),

          child,
        ],
      ),
    );
  }
}
