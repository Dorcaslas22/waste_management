import 'package:flutter/material.dart';
import 'package:waste_management/screens/profile_view.dart';
import 'package:waste_management/screens/recycle_view_screen.dart';
import 'package:waste_management/screens/waste_view_screen.dart';
import 'package:waste_management/services/notification.dart';
import '../icons.dart';
import '../widgets/learning_widget.dart';
import '../widgets/upcoming_widget.dart';
import 'explore_view_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  var listOfPages = [
    HomeView(),
    WasteViewScreen(),
    RecycleViewScreen(),
    ExploreViewScreen(),
    ProfileView(),
  ];
  // var selectedIndex = 0;
  // var notifyHelper;
  // @override
  // void initState(){
  //   super.initState();
  //   notifyHelper = NotifyHelper();
  //   notifyHelper.requestAndriodPermissions();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Jane",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Let's turn waste into wealth",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(4, 28, 21, 1),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            color: Color.fromRGBO(13, 92, 70, 1),
            onPressed: (){},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25,left: 25,right: 25,bottom:10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(13, 92, 72, 1),
                    Color.fromRGBO(59, 122, 71, 1),
                    Color.fromRGBO(144, 151, 65, 1),
                    Color.fromRGBO(179, 175, 59, 1),
                    Color.fromRGBO(255, 193, 69, 1),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.03),
                    spreadRadius: 10,
                    blurRadius: 3,
                  ),
                ],
              ),
              child:  Padding(
                padding: EdgeInsets.only(top: 20, bottom: 25,right: 20,left: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kg Recycled\nmaterials",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white,
                              ),),
                            SizedBox(height: 5),
                            Text("14",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white,
                              ),),
                          ],
                        ),
                        Container(
                          width: 0.5,
                          height: 90,
                          color: Colors.white,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wallet\nBalance",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white
                              ),),
                            SizedBox(height: 5),
                            Text("₦3,500",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white
                              ),),
                          ],
                        ),
                        Container(
                          width: 0.5,
                          height: 90,
                          color: Colors.white,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Number of\npickups",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white
                              ),),
                            SizedBox(height: 5),
                            Text("12",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal:15),
              width: 340,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black45,width: 0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Waste Collection Day",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.only(top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.green,width: 0.6),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Icon(
                            CustomIcons.waste,
                            color: Colors.green,
                          )
                      ),
                    ],
                  ),
                  const Text("Tomorrow is your area's waste collection day."
                      "\nMake sure to have your bins ready!",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Text("Quick Options",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(4, 28, 21, 1),
                  ),),
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WasteViewScreen(),
                    ));
              },
              child: Padding(padding: EdgeInsets.all(15),
                child: Center(
                  child: Wrap(
                    spacing: 2.0,
                    runSpacing: 8.0,
                    children: [
                      SizedBox(
                        width: 163.0,
                        height: 98.0,
                        child: Card(
                          color:  Color.fromRGBO(255, 243, 218, 0.7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child:  Center(
                            child: Padding(padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Image.asset("assets/time1.png"),
                                  // Icon(CustomIcons.schedule),
                                  SizedBox(height: 8),
                                  const Text("Schedule waste pickup",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color:Color.fromRGBO(47, 47, 47, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 163.0,
                        height: 98.0,
                        child: Card(
                          color:  Color.fromRGBO(218, 255, 255, 0.7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child:  Center(
                            child: Padding(padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Image.asset("assets/invest.png"),
                                  // Icon(CustomIcons.schedule),
                                  SizedBox(height: 8),
                                  const Text("Sell your recyclables",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color:Color.fromRGBO(47, 47, 47, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 163.0,
                        height: 98.0,
                        child: Card(
                          color:  Color.fromRGBO(218, 230, 255, 0.7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child:  Center(
                            child: Padding(padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Image.asset("assets/house.png"),
                                  // Icon(CustomIcons.schedule),
                                  SizedBox(height: 8),
                                  const Text("Waste collection centers",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color:Color.fromRGBO(47, 47, 47, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 163.0,
                        height: 98.0,
                        child: Card(
                          color:  Color.fromRGBO(255, 218, 249, 0.7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child:  Center(
                            child: Padding(padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Image.asset("assets/community.png"),
                                  // Icon(CustomIcons.schedule),
                                  SizedBox(height: 8),
                                  const Text("Explore communities",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color:Color.fromRGBO(47, 47, 47, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming events near you",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(4, 28, 21, 1),
                  ),
                  ),
                  Text("See All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(13, 92, 70, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            UpcomingWidget(),
            SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(top: 20.0,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Learning (Recommended for you)",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(4, 28, 21, 1),
                    ),
                  ),
                ],
              ),
            ),
            LearningWidget(),
          ],
        ),
      ),
    );
  }
}