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
    return true?
    CupertinoTabScaffold(
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
    )
        :Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: const [
           Home(),
           Search(),
           Profile()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            controller.animateToPage(value, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
          });
        },
        selectedIconTheme: const IconThemeData(color: Colors.purple),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              label: "",
              icon: Icon(CupertinoIcons.home)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_search),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: ""
          ),
        ],
      ),
    );
  }
  Widget b() {
    return Container();
  }
}
