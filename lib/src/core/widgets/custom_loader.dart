import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";
import "package:in_ride/src/core/utils/palette/color_palette.dart";

class CustomLoader extends StatelessWidget {
  final double opacity;

  final Color color;

  final Widget progressIndicator;

  final Offset? offset;

  final bool dismissible;

  final double blur;

  final double? height;

  const CustomLoader({
    super.key,
    this.opacity = 0.1,
    this.color = Palette.backgroundColor,
    this.progressIndicator = const SpinKitThreeBounce(
      color: Palette.backgroundColor,
      size: 50.0,
    ),
    this.offset,
    this.dismissible = false,
    this.blur = 0.0,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    Widget layOutProgressIndicator;
    if (offset == null) {
      layOutProgressIndicator = Center(child: progressIndicator);
    } else {
      layOutProgressIndicator = Positioned(
        left: offset!.dx,
        top: offset!.dy,
        child: progressIndicator,
      );
    }

    return SizedBox(
      height: height,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Opacity(
              opacity: opacity,
              child: ModalBarrier(dismissible: dismissible, color: color),
            ),
          ),
          layOutProgressIndicator,
          // const Positioned(
          //   top: 150,
          //   child: Align(
          //       alignment: Alignment.center,
          //       child: Text('Finding Drivers',
          //           style: TextStyle(color: Colors.black, fontSize: 16))
          // ),
          // )
        ],
      ),
    );
  }
}
