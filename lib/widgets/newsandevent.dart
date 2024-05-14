import 'package:flutter/material.dart';

class NewsAndEvent extends StatelessWidget {
  const NewsAndEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 10,bottom: 10, left: 15),
            // padding: EdgeInsets.symmetric(horizontal: 10),
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white54.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  // offset: Offset(0, 3)
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 20,right: 70),
                      height: 140,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset("assets/green1.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Government Allocates Funds \nfor Recycling Infrastructure",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(4, 28, 21, 1),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("15 Minute ago",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                          ),
                          SizedBox(width: 35),
                          TextButton(
                            onPressed: (){},
                            child: Text("Read more",style:
                            TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.double_arrow_rounded,
                            size: 12,color: Color.fromRGBO(13, 92, 70, 1),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            // margin: EdgeInsets.only(top: 10,bottom: 10, left: 15),
            // padding: EdgeInsets.symmetric(horizontal: 10),
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white54.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  // offset: Offset(0, 3)
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 20,right: 70),
                      height: 140,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset("assets/box1.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nationwide Campaign to \nReduce Plastic Waste in \nOceans",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(4, 28, 21, 1),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("15 Minute ago",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                          ),
                          SizedBox(width: 35),
                          TextButton(
                            onPressed: (){},
                            child: Text("Read more",style:
                            TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                            ),
                          ),
                          Icon(Icons.double_arrow_rounded,
                            size: 12,color: Color.fromRGBO(13, 92, 70, 1),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            // margin: EdgeInsets.only(top: 10,bottom: 10, left: 15),
            // padding: EdgeInsets.symmetric(horizontal: 10),
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white54.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  // offset: Offset(0, 3)
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 20,right: 70),
                      height: 140,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset("assets/bin1.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("E-Waste Recycling Initiatives \nDocumentary",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(4, 28, 21, 1),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("15 Minute ago",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                          ),
                          SizedBox(width: 35),
                          TextButton(
                            onPressed: (){},
                            child: Text("Read more",style:
                            TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color.fromRGBO(47, 47, 47, 1),
                            ),
                            ),
                          ),
                          Icon(Icons.double_arrow_rounded,
                            size: 12,color: Color.fromRGBO(13, 92, 70, 1),
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
    );
  }
}