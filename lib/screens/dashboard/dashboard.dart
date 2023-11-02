import 'package:admin_panel/constants.dart';
import 'package:admin_panel/models/RecentFile.dart';
import 'package:admin_panel/responsive.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/header.dart';
import 'components/myfiles.dart';
import 'components/recent_file.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(searchController: _searchController),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyFiles(),
                    RecentFiles(),
                    if (Responsive.isMobile(context))
                      SizedBox(
                        height: defaultPadding,
                      ),
                    if (Responsive.isMobile(context))
                      StorageDetails()
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(
                  width: defaultPadding,
                ),
              if (!Responsive.isMobile(context))
                Expanded(flex: 2, child: StorageDetails()),
            ],
          ),
        ],
      ),
    ));
  }
}
