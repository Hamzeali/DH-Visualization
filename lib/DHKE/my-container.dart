import 'package:flutter/material.dart';

class TooltipShippingFeeBorder extends ShapeBorder {
  var a;
  var b;
  var c;
  var d;
  var e;
  var f;
  TooltipShippingFeeBorder(this.a, this.b, this.c, this.d, this.e, this.f);
  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.only(top: 0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getOuterPath(rect), Offset.zero);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - Offset(0, 20));
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(20)))
      ..moveTo(rect.topCenter.dx + a, rect.topCenter.dy)
      ..relativeLineTo(10, -20)
      ..relativeLineTo(20, 20)
      ..close();
    // ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(60)))
    // ..moveTo(rect.topCenter.dx - 240, rect.topCenter.dy + 35)
    // ..relativeLineTo(-50, -50)
    // ..relativeLineTo(120, 40)
    // ..close();
    // ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(60)))
    // ..moveTo(rect.topCenter.dx + a, rect.topCenter.dy + b)
    // ..relativeLineTo(c, d)
    // ..relativeLineTo(e, f)
    // ..close();
    // ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(6)))
    // ..moveTo(rect.topCenter.dx - 90, rect.topCenter.dy + 50)
    // ..relativeLineTo(30, -20)
    // ..relativeLineTo(20, 20)
    // ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
