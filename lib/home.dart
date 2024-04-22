// ignore_for_file: sized_box_for_whitespace

import 'package:es_hr/widgets/appbar_white_corner.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

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
                padding: const EdgeInsets.only(left: 25, right: 20, top: 10),
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth / 2,
                      height: 80,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, ES Developer!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
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
                    const Spacer(),
                    const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Image.asset(
                      'images/profile.png',
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
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Container(
                  width: deviceWidth,
                  height: 60,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF62cff4),
                      Color(0xFF2c67f2),
                    ]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: deviceWidth / 1.5 - 50,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            '00:00 Hrs',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        child: Container(
                          alignment: Alignment.center,
                          width: 110,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Check in',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF143c8f),
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ]));
  }
}
