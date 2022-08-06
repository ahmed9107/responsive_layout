import 'package:flutter/material.dart';
import 'package:responsive_layout/utils/constants/colors.dart';
import 'package:responsive_layout/views/widgets/my_box.dart';
import 'package:responsive_layout/views/widgets/my_drawer.dart';
import 'package:responsive_layout/views/widgets/my_tile.dart';

class TabletView extends StatefulWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.darkBackgroundColor,
        elevation: 2.0,
        title: const Text('TABLET VIEW', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.maxFinite,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
