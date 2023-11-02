import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       
             CircleAvatar(
               backgroundImage:AssetImage("assets/images/profile_pic.png",)),
         if(!Responsive.isMobile(context))
         Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding/2),
          child: Text('M. Muneeb'),
        ),
        const Icon(Icons.keyboard_arrow_down)

      ],
    );
  }
}
