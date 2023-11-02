import 'package:admin_panel/controllers/MenuAppController.dart';
import 'package:admin_panel/responsive.dart';
import 'package:admin_panel/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(child: SideMenu()),
            // if(Responsive.isTablet(context))
            //   Expanded(child: SideMenu()),
            // if(Responsive.isMobile(context))
            //   Expanded(child: SideMenu()),

            Expanded(
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}
