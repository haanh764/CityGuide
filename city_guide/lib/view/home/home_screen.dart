import 'package:city_guide/component/custom_appbar.dart';
import 'package:city_guide/model/constants.dart';
import 'package:city_guide/view/favorite/favorite_screen.dart';
import 'package:city_guide/view/home/widgets/home_body_mobile.dart';
import 'package:city_guide/view/home/widgets/home_body_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? CustomAppBar(
                leading: Container(),
                flexibleSpace: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Welcome to City Guide',
                          style: TextStyle(
                            fontFamily: 'NunitoSans',
                            color: grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0, top: 2.0),
                        child: Text(
                          'Explore Hanoi, the heart of Vietnam',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FavoriteScreen();
                      }));
                    },
                    icon: const Icon(
                      Icons.bookmark,
                      color: black,
                    ),
                  ),
                ],
              )
            : null,
        body: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? const HomeBodyMobile()
            : const HomeBodyWeb(),
      );
    });
  }
}
