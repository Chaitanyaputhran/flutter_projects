import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ResuableCard extends StatelessWidget {
  ResuableCard({required this.colour, this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0),

      decoration:BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:cardChild,
    );
  }
}
