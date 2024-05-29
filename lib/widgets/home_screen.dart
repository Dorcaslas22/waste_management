import 'package:flutter/material.dart';

import '../icons.dart';
import '../screens/explore_screens/explore_view_screen.dart';
import '../screens/home_view.dart';
import '../screens/profile_view.dart';
import '../screens/recycle_screen/recycle_view_screen.dart';
import '../screens/waste_screen/waste_view_screen.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  var listOfPages = [
    HomeView(),
    WasteViewScreen(),
    RecycleViewScreen(),
    ExploreViewScreen(),
    ProfileView(),
  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[selectedIndex],
      // bottomNavigationBar: NavigationBarTheme(
      //     data: NavigationBarThemeData(
      //       backgroundColor:Color.fromRGBO(241, 255, 251, 1) ,
      //       // indicatorColor: Color.fromRGBO(13, 92, 70, 1),
      //       labelTextStyle: MaterialStateProperty.all(TextStyle(
      //         fontSize: 12,
      //         fontWeight: FontWeight.w500,
      //       ),),
      //     ),
      //     child: NavigationBar(
      //       height: 70,
      //       destinations: [
      //         NavigationDestination(
      //             icon: Icon(CustomIcons.home), label: "Home",
      //         ),
      //         NavigationDestination(
      //           icon: Icon(CustomIcons.waste), label: "Waste",
      //         ),
      //         NavigationDestination(
      //           icon: Icon(CustomIcons.recycle), label: "Recycle",
      //         ),
      //         NavigationDestination(
      //           icon: Icon(CustomIcons.community), label: "Community",
      //         ),
      //         NavigationDestination(
      //           icon: Icon(CustomIcons.profile), label: "Profile",
      //         ),
      //       ],
      //     ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        backgroundColor: const Color.fromRGBO(241, 255, 251, 1),
        currentIndex: selectedIndex,
        unselectedItemColor: const Color.fromRGBO(192, 192, 192, 1),
        selectedItemColor: Color(0xFF0d5c46),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.waste),
            label: "Waste",
          ),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.recycle),
              label: "Recycle"
          ),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.community),
              label: "Explore"
          ),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.person),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}