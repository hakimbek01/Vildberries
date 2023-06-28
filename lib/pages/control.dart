import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvmproject/pages/home.dart';
import 'package:mvvmproject/pages/profile.dart';
import 'package:mvvmproject/pages/search.dart';

class Controll extends StatefulWidget {
  const Controll({Key? key}) : super(key: key);

  @override
  State<Controll> createState() => _ControllState();
}

class _ControllState extends State<Controll> {

  PageController controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,

        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),),
          BottomNavigationBarItem(icon: Icon(Icons.manage_search),),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_alt_circle),),
        ],
      ),
      tabBuilder: (context, index) {
        switch(index) {
          case 0:
            return const Home();
          case 1:
            return const Search();
          case 2:
            return const Profile();
        }
        return const SizedBox();
      },
    );
  }
}
