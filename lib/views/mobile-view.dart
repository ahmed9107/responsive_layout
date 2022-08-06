import 'package:flutter/material.dart';
import 'package:responsive_layout/utils/constants/colors.dart';
import 'package:responsive_layout/views/widgets/my_box.dart';
import 'package:responsive_layout/views/widgets/my_drawer.dart';
import 'package:responsive_layout/views/widgets/my_tile.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.darkBackgroundColor,
        elevation: 2.0,
        title: const Text('MOBILE VIEW', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.maxFinite,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                itemCount: 4,
                itemBuilder: (context, index){
                  return const MyBox();
                }
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index){
                return const MyTile();
              }
            )
          )
        ],
      )
    );
  }
}
