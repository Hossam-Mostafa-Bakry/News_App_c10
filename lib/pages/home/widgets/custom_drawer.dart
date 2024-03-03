import 'package:flutter/material.dart';
import 'package:news_c10_sun/core/confige/pages_route_name.dart';
import 'package:news_c10_sun/main.dart';

import '../../../core/confige/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width * 0.8,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: Constants.mediaQuery.width * 0.8,
            height: 160,
            color: Constants.theme.primaryColor,
            child: Text(
              "News App!",
              style: Constants.theme.textTheme.titleLarge,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                top: 25,
                bottom: 5,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.list_outlined,
                    size: 35,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Categories",
                    style: Constants.theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // navigatorKey.currentState!.pushReplacementNamed(
              //   PagesRouteName.settingsView,
              // );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                top: 5,
                bottom: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: 35,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Settings",
                    style: Constants.theme.textTheme.titleLarge
                        ?.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
