import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_scale/scale/braden.dart';
import 'package:health_scale/scales.dart';
import 'package:health_scale/style.dart';


class PageScale extends StatefulWidget {
  final int item;
  PageScale(this.item) : super();
  @override
  _PageState createState() => _PageState(item);
}

class _PageState extends State<PageScale> {
  final int item;
  _PageState(this.item);

  @override
  Widget build(BuildContext context) {
    if (item == 0) {
      return Scaffold(
        body: PageBraden(item),
      );
    }
  }
}
