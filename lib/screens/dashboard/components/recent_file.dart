import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../../models/RecentFile.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columns:  const [
                DataColumn(label: Text('File Name',style: TextStyle(overflow: TextOverflow.ellipsis),)),
                DataColumn(label: Text('Date',style: TextStyle(overflow: TextOverflow.ellipsis),)),
                DataColumn(label: Text('Size',style: TextStyle(overflow: TextOverflow.ellipsis),))
              ],
              rows: List.generate(
                  demoRecentFiles.length,
                  (index) =>
                      recentFileDataRow(demoRecentFiles[index], context)),
            ),
          )
        ],
      ),
    );
  }
}
DataRow recentFileDataRow(RecentFile fileInfo, context) {
  TextStyle? mobileTextStyle = Responsive.isMobile(context) ? TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis) : null;

  return DataRow(cells: [
    DataCell(
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            fileInfo.icon,
            fit: BoxFit.cover,
          ),
          SizedBox(width: defaultPadding),
          if (!Responsive.isMobile(context)) Text(fileInfo.title,style: TextStyle(overflow: TextOverflow.ellipsis)),
        ],
      ),
    ),
    DataCell(Text(fileInfo.date, style: mobileTextStyle,)),
    DataCell(Text(fileInfo.size, style: mobileTextStyle))
  ]);
}
