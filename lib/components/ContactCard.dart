import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactCard extends StatelessWidget {
  final String imagePath;
  final double iconSize;

  const ContactCard({
    required this.imagePath,
    this.iconSize =24.0
  });

  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      width: 70,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
        ),
      child: SvgPicture.asset(
        imagePath,
        height: iconSize,
        width: iconSize,
      ), 
    );
  }
}