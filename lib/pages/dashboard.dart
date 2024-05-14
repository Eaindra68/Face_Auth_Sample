import 'dart:io';

import 'package:es_hr/service/model/user_model.dart';
import 'package:es_hr/widgets/appbar_white_corner.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage(this.username,
      {Key? key, required this.imagePath, User? user})
      : super(key: key);
  final String username;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(children: [
      CustomScrollView(slivers: [
        SliverAppBar(
          floating: false,
          pinned: true,
          leading: const SizedBox.shrink(),
          toolbarHeight: 100,
          expandedHeight: 100,
          collapsedHeight: 100,
          flexibleSpace: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Container(
              height: 150,
              color: const Color(0xFF143c8f),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth / 2,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi ' + username + '!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Explore the dashboard',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.notifications,
                          color: Colors.white, size: 30),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(File(imagePath)),
                        ),
                      ),
                      margin: EdgeInsets.all(20),
                      width: 45,
                      height: 45,
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(AppBarWhiteCorner.kHeight),
            child: AppBarWhiteCorner(),
          ),
        ),
      ]),
    ]));
  }
}
