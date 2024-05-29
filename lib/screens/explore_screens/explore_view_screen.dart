import 'package:flutter/material.dart';
import 'package:waste_management/screens/explore_screens/community_initiatives.dart';
import 'package:waste_management/screens/explore_screens/learning_screen.dart';

import '../../widgets/community_widget.dart';
import '../../widgets/newsandevent.dart';
import '../../widgets/seeAll.dart';

class ExploreViewScreen extends StatelessWidget {
  const ExploreViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text("Explore", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1.0),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                      color: Color.fromRGBO(106, 106, 106, 1),
                      size: 24,
                    ),
                    border: InputBorder.none,
                    label: Text("Search",
                      style: TextStyle(
                        color: Color.fromRGBO(106, 106, 106, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromRGBO(13, 92, 70, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          // Container(
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.end,
                          //     children: [
                          //       Image.asset("assets/pic1.png",
                          //       height: 124,
                          //         width: 157,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Text("Join the Trailblazers \nfor a community \nclean up",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.calendar_month,size:14,color: Colors.yellow,),
                          Text("5th April",style: TextStyle(
                              fontSize:10,
                              color: Color.fromRGBO(255, 255, 255, 1)
                          ),),
                          SizedBox(width: 20),
                          Icon(Icons.alarm,size:14,color: Colors.yellow,),
                          Text("12 noon",style: TextStyle(
                              fontSize:10,
                              color: Color.fromRGBO(255, 255, 255, 1)
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Learning",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(4, 28, 21, 1),
                    ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LearningScreen(),
                            ));
                      },
                      child: Text("See All",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(13, 92, 70, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               SeeAll(),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Community Initiatives",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(4, 28, 21, 1),
                    ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CommunityInitiatives(),
                            ));
                      },
                      child: Text("See All",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(13, 92, 70, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CommunityWidget(),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("News and Events",style: TextStyle(
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
              SizedBox(height: 10),
              NewsAndEvent()
            ],
          ),
        ),
      ),
    );
  }
}