

import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Color.fromRGBO(13, 92, 70, 1),
              child: Stack(
                children: [
                  Container(
                    width: 390,
                    height: 242,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/image1.png"),
                      ),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 40),
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(""),
                        ),
                        SizedBox(height: 5),
                        Text("Jane Doe",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("08025654785",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        DraggableScrollableSheet(
                            initialChildSize: 0.65,
                            builder: (context, scrollController){
                              return Container(
                                padding: EdgeInsets.only(
                                  top: 40,
                                  left: 20,
                                  right: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),),
                                child: ListView(
                                  controller: scrollController,
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.account_circle),
                                        hintText: "Edit Profile",
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                        ),
                        // SizedBox(height: 5),
                        // Padding(
                        //   padding: const EdgeInsets.all(0),
                        //   child: Container(
                        //     height: 500,
                        //     width: 300,
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.only(
                        //           topLeft: Radius.circular(8),
                        //           topRight: Radius.circular(8),
                        //         ),
                        //         color: Color.fromRGBO(255, 255, 255, 1),
                        //         boxShadow: [
                        //           BoxShadow(
                        //             spreadRadius: 0,
                        //             blurRadius: 20,
                        //             color: Color.fromRGBO(3, 18, 4, 0.1),
                        //           ),
                        //         ],
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color: Color.fromRGBO(255, 255, 255, 1),
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        //   child: Row(
                        //     children: [
                        //       Expanded(child:
                        //       TextField(
                        //         decoration: InputDecoration(
                        //           prefixIcon: Icon(Icons.account_circle),
                        //           hintText: "Edit Profile"
                        //         ),
                        //       ),),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       color: Color.fromRGBO(13, 92, 70, 1),
      //       child: Stack(
      //         children: [
      //           Container(
      //             width: 390,
      //             height: 242,
      //             padding: EdgeInsets.all(0),
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/image1.png"),
      //               ),
      //             ),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 SizedBox(height: 40),
      //                 CircleAvatar(
      //                   radius: 32,
      //                   backgroundImage: AssetImage(""),
      //                 ),
      //                 SizedBox(height: 5),
      //                 Center(
      //                   child: Text("Jane Doe",
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 20,
      //                       color: Color.fromRGBO(255, 255, 255, 1),
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(height: 5),
      //                 Center(
      //                   child: Text("08025654785",
      //                     style: TextStyle(
      //                         fontWeight: FontWeight.w400,
      //                         fontSize: 16,
      //                         color: Color.fromRGBO(255, 255, 255, 1),
      //                     ),
      //                   ),
      //                 ),
      //                 DraggableScrollableSheet(
      //                   initialChildSize: 0.65,
      //                     builder: (context, scrollController){
      //                       return Container(
      //                         padding: EdgeInsets.only(
      //                           top: 40,
      //                           left: 20,
      //                           right: 20,
      //                         ),
      //                           decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.only(
      //                           topLeft: Radius.circular(8),
      //                       topRight: Radius.circular(8),
      //                       ),),
      //                         child: ListView(
      //                           controller: scrollController,
      //                           children: [
      //                             TextField(
      //                               decoration: InputDecoration(
      //                                 prefixIcon: Icon(Icons.account_circle),
      //                                   hintText: "Edit Profile",
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                       );
      //                     }
      //                 ),
      // SizedBox(height: 5),
      // Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Container(
      //     height: 500,
      //     width: 300,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(8),
      //           topRight: Radius.circular(8),
      //         ),
      //         color: Color.fromRGBO(255, 255, 255, 1),
      //         boxShadow: [
      //           BoxShadow(
      //             spreadRadius: 0,
      //             blurRadius: 20,
      //             color: Color.fromRGBO(3, 18, 4, 0.1),
      //           )
      //         ]
      //     ),
      //   ),
      // )
    );
  }
}