import'package:flutter/material.dart';
import'package:power_she_pre/constants.dart';

import '../screens/opr_screen.dart';
import '../screens/safety_screen.dart';
import '../screens/store.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomAppBar(
              clipBehavior: Clip.none,
              color: kpink,
              shape: CircularNotchedRectangle(),
              notchMargin: 10,
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {


                            // Navigator.pushNamed(context, UploadImage.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Tutorials',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              //   currentScreen = HomeScreen();
                              //   currentTab = 0;
                              // });
                              Navigator.pushNamed(context, StoreScreen.id);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.storefront,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  'Store',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {

                            Navigator.pushNamed(context, OprScreen.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.school,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Opportunities',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {

                            // Navigator.pushNamed(context, UserProfile.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.groups,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Support',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: SizedBox(
                width: 68,
                height: 68,
                child: FloatingActionButton(
                    clipBehavior: Clip.none,
                    onPressed: () {
                      Navigator.pushNamed(context, SafetyScreen.id);
                    },
                    backgroundColor: kdblue,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/safety.png'),
                    )),
              ),
            ),
          ),
        ],
      ),
    );;
  }
}


