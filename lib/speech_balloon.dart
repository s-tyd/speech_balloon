import 'dart:math';

import 'package:flutter/material.dart';

enum NipLocation {
  top,
  right,
  bottom,
  left,
  bottomRight,
  bottomLeft,
  topRight,
  topLeft
}

const defaultNipHeight = 10.0;

class SpeechBalloon extends StatelessWidget {
  const SpeechBalloon(
      {Key? key,
      required this.child,
      this.nipLocation = NipLocation.bottom,
      this.color = Colors.redAccent,
      this.borderRadius = 4.0,
      // this.borderWidth = ,
      // this.borderWidth = ,
      this.height,
      this.width,
      this.padding,
      this.nipHeight = defaultNipHeight,
      this.offset = Offset.zero})
      : super(key: key);

  final Widget child;
  final NipLocation nipLocation;
  final Color color;
  final double borderRadius;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final double nipHeight;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    Offset? nipOffset;
    AlignmentGeometry? alignment;
    final rotatedNipHalfHeight = getNipHeight(nipHeight) / 2;
    final offset = nipHeight / 2 + rotatedNipHalfHeight;
    switch (nipLocation) {
      case NipLocation.top:
        nipOffset = Offset(0, -offset + rotatedNipHalfHeight);
        alignment = Alignment.topCenter;
        break;
      case NipLocation.right:
        nipOffset = Offset(offset - rotatedNipHalfHeight, 0);
        alignment = Alignment.centerRight;
        break;
      case NipLocation.bottom:
        nipOffset = Offset(0, offset - rotatedNipHalfHeight);
        alignment = Alignment.bottomCenter;
        break;
      case NipLocation.left:
        nipOffset = Offset(-offset + rotatedNipHalfHeight, 0);
        alignment = Alignment.centerLeft;
        break;
      case NipLocation.bottomLeft:
        nipOffset = this.offset +
            Offset(
                offset - rotatedNipHalfHeight, offset - rotatedNipHalfHeight);
        alignment = Alignment.bottomLeft;
        break;
      case NipLocation.bottomRight:
        nipOffset = this.offset +
            Offset(
                -offset + rotatedNipHalfHeight, offset - rotatedNipHalfHeight);
        alignment = Alignment.bottomRight;
        break;
      case NipLocation.topLeft:
        nipOffset = this.offset +
            Offset(
                offset - rotatedNipHalfHeight, -offset + rotatedNipHalfHeight);
        alignment = Alignment.topLeft;
        break;
      case NipLocation.topRight:
        nipOffset = this.offset +
            Offset(
                -offset + rotatedNipHalfHeight, -offset + rotatedNipHalfHeight);
        alignment = Alignment.topRight;
        break;
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Stack(
          alignment: alignment,
          children: [
            nip(nipOffset),
            balloon(),
          ],
        ),
        Stack(
          alignment: alignment,
          children: [
            nip(nipOffset),
            balloon(),
          ],
        ),
      ],
    );
  }

  Widget balloon() {
    return Material(
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius),
      ),
      color: color,
      child: Container(
        height: height,
        width: width,
        padding: padding ?? const EdgeInsets.all(8),
        child: child,
      ),
    );
  }

  Widget nip(Offset nipOffset) {
    return Transform.translate(
      offset: nipOffset,
      child: RotationTransition(
        turns: const AlwaysStoppedAnimation(45 / 360),
        child: Material(
          borderRadius: const BorderRadius.all(
            Radius.circular(1.5),
          ),
          color: color,
          child: Container(
            height: nipHeight,
            width: nipHeight,
          ),
        ),
      ),
    );
  }

  double getNipHeight(double nipHeight) => sqrt(2 * pow(nipHeight, 2));
}
