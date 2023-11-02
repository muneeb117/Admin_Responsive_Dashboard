import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/logo.png")),
            Drawer_Items(
              path: 'assets/icons/menu_dashboard.svg',
              text: 'Dashboard',
              press: () {},
            ),
            Drawer_Items(
              path: 'assets/icons/menu_doc.svg',
              text: 'Menu',
              press: () {},
            ),
            Drawer_Items(
              path: 'assets/icons/menu_notification.svg',
              text: 'Notifications',
              press: () {},
            ),
            Drawer_Items(
              path: 'assets/icons/menu_profile.svg',
              text: 'Profile',
              press: () {},
            ),
            Drawer_Items(
              path: 'assets/icons/menu_setting.svg',
              text: 'Setting',
              press: () {},
            ),
            Drawer_Items(
              path: 'assets/icons/menu_store.svg',
              text: 'Store',
              press: () {},
            ),
            Drawer_Items(
              path: 'assets/icons/menu_task.svg',
              text: 'Task',
              press: () {},
            ),
            Drawer_Items(
              path: 'assets/icons/menu_tran.svg',
              text: 'Tran',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Drawer_Items extends StatelessWidget {
  final String path;
  final String text;
  final VoidCallback press;
  const Drawer_Items({
    super.key,
    required this.path,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      onTap: press,
      leading: SvgPicture.asset(
        path,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
