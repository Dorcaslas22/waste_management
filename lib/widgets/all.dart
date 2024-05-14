import 'package:flutter/material.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 145,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/blog.png",
                            // fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Blog",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(13, 92, 71, 1),
                                      ),),
                                      SizedBox(width: 10),
                                      Icon(Icons.circle,size:8,
                                        color: Color.fromRGBO(255, 193, 69, 1),),
                                      SizedBox(width: 10),
                                      Text("21 FEB 2024",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(106, 106, 106, 1),
                                      ),),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("10 Tips for Effective \nWaste Sorting at Home",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(4, 28, 21, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
            Container(
              height: 145,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/blog4.png",
                            // fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Blog",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(13, 92, 71, 1),
                                      ),),
                                      SizedBox(width: 10),
                                      Icon(Icons.circle,size:8,
                                        color: Color.fromRGBO(255, 193, 69, 1),),
                                      SizedBox(width: 10),
                                      Text("21 FEB 2024",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(106, 106, 106, 1),
                                      ),),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("The Future of Waste \nManagement",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(4, 28, 21, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
            Container(
              height: 145,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/video.png",
                            // fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Video",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(13, 92, 71, 1),
                                      ),),
                                      SizedBox(width: 10),
                                      Icon(Icons.circle,size:8,
                                        color: Color.fromRGBO(255, 193, 69, 1),),
                                      SizedBox(width: 10),
                                      Text("21 FEB 2024",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(106, 106, 106, 1),
                                      ),),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("The Danger of Lack of \nProper Waste Disposal",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(4, 28, 21, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
            Container(
              height: 145,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/diy.png",
                            // fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("DIY",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(13, 92, 71, 1),
                                      ),),
                                      SizedBox(width: 10),
                                      Icon(Icons.circle,size:8,
                                        color: Color.fromRGBO(255, 193, 69, 1),),
                                      SizedBox(width: 10),
                                      Text("21 FEB 2024",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(106, 106, 106, 1),
                                      ),),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Simple Swaps for a \nMore Sustainable Lifestyle",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(4, 28, 21, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
            Container(
              height: 145,
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/blog5.png",
                            // fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Blog",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(13, 92, 71, 1),
                                      ),),
                                      SizedBox(width: 10),
                                      Icon(Icons.circle,size:8,
                                        color: Color.fromRGBO(255, 193, 69, 1),),
                                      SizedBox(width: 10),
                                      Text("21 FEB 2024",style: TextStyle(
                                        fontSize:12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(106, 106, 106, 1),
                                      ),),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("The Environmental Impact \nof Plastic Pollution",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(4, 28, 21, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromRGBO(192, 192, 192, 1),
            ),

          ],
        ),
      ),
    );
  }
}
