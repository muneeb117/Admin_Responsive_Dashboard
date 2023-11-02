import 'package:admin_panel/controllers/MenuAppController.dart';
import 'package:admin_panel/responsive.dart';
import 'package:admin_panel/screens/dashboard/components/portfolio.dart';
import 'package:admin_panel/screens/dashboard/components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () {
              context.read<MenuAppController>().controlMenu();
            },
            icon: Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          Text('Dashboard', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          width: 30,
        ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(child: BuildSearchBar(searchController: _searchController)),
        Container(
          margin: EdgeInsets.only(left: defaultPadding),
          padding: EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding / 2),
          decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.white10)),
          child: PortfolioCard(),
        )
      ],
    );
  }
}
