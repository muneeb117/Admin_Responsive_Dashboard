import 'package:admin_panel/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: GestureDetector(
          onTap: (){},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
            decoration:  BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding:const EdgeInsets.all(defaultPadding*0.75),
                child: SvgPicture.asset("assets/icons/Search.svg")),
          ),
        )

      ),
    );
  }
}
