import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';
import 'FileInfoCard.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Icon(Icons.add), Text('Add New')],
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width<650?2:4,
            childAspectRatio: _size.width<650?1.3:1,
          ),
          desktop: FileInfoCardGridView(),
          tablet: FileInfoCardGridView(
            childAspectRatio: _size.width<1400?1.1:1.4,
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),

      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });
  final int crossAxisCount;
  final double childAspectRatio;


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demoMyFiles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing:defaultPadding ,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (context, index) {
          return FileInfoCard(
            info: demoMyFiles[index],
          );
        });
  }
}
