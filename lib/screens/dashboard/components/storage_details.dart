import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'chart.dart';
class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            'Storage Details',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          SizedBox(
            height: defaultPadding,
          ),
          StorageInfoCard(svgPath: 'assets/icons/Documents.svg', title: 'Documents', amountofFiles: 13285, storageAmount: '1.3 GB',),
          StorageInfoCard(svgPath: 'assets/icons/media.svg', title: 'Media Files', amountofFiles: 13285, storageAmount: '15.3 GB',),
          StorageInfoCard(svgPath: 'assets/icons/folder.svg', title: 'Other Files', amountofFiles: 13285, storageAmount: '10.3 GB',),
          StorageInfoCard(svgPath: 'assets/icons/unknown.svg', title: 'Unknown', amountofFiles: 13285, storageAmount: '1.3 GB',),
        ],
      ),
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  final String svgPath;
  final String title;
  final int amountofFiles;
  final String storageAmount;
  const StorageInfoCard({
    super.key, required this.svgPath, required this.title, required this.amountofFiles, required this.storageAmount,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding/2),
      padding: EdgeInsets.all(defaultPadding/2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding/2)),
        border: Border.all(
            width: 2,
            color: primaryColor.withOpacity(0.15)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                    svgPath)),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow:TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white,),
                  ),
                  Text(
                    amountofFiles.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.white70),
                  ),
                ]),  Text(storageAmount),
          ],
        ),
      ),
    );
  }
}
