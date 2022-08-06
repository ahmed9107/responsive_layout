import 'package:flutter/material.dart';
import 'package:responsive_layout/utils/constants/colors.dart';

var myDrawer = Drawer(
    backgroundColor: AppColor.darkSecondaryColor,
    child: Column(children: [
      DrawerHeader(child: Image.asset('assets/images/a.png')),
      const ListTile(
        leading: Icon(Icons.contact_phone_outlined),
        title: Text('Contact'),
      ),
      const ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
      const ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ),
      const ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
      ),
      const ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
      ),
    ]),
  );