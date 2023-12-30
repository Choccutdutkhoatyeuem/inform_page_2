import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconDesign extends StatelessWidget {
  final String icon;

  const IconDesign({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      height: 40,
      child: SvgPicture.asset(
        icon,
        color: Color.fromARGB(210, 130, 127, 127),
      ), 
    );
  }
}
