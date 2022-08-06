import 'package:flutter/material.dart';
import 'package:responsive_layout/utils/constants/colors.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColor.darkSecondaryColor,
        ),
        height: 80.0,
      ),
    );
  }
}