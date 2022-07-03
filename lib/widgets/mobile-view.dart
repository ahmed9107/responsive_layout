import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 2.0,
          title:
              const Text('MOBILE VIEW', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: AspectRatio(
                  aspectRatio: 16 / 9, child: Container(color: Colors.grey)),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, i) => Container(
                          margin: const EdgeInsets.only(bottom: 20.0),
                          height: 120,
                          color: const Color(0xFF616161),
                        )),
              ),
            ),
          ],
        ));
  }
}
