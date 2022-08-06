import 'package:flutter/material.dart';
import 'package:responsive_layout/utils/constants/colors.dart';
import 'package:responsive_layout/views/widgets/my_box.dart';
import 'package:responsive_layout/views/widgets/my_drawer.dart';
import 'package:responsive_layout/views/widgets/my_tile.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.darkBackgroundColor,
        /* appBar: AppBar(
          backgroundColor: AppColor.darkBackgroundColor,
          elevation: 2.0,
          title: const Text('DESKTOP VIEW', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ), */
        body: Row(
          children: [
            // Drawer menu
            myDrawer,

            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(
                    height: 80.0,
                    width: double.infinity,
                    child: Center(child: Text('DESKTOP VIEW', style: TextStyle(color: Colors.white))),
                  ),
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4
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
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: AppColor.darkSecondaryColor,
                    ),
                  )
                ],
              )
            )
          ],
        ));
  }
}
