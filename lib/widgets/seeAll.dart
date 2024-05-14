import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {

  List<String> UpcomingText = [
    "10 Tips for Effective Waste Sorting at...",
    "The Danger of Improper Waste...",
    "How to Make Natural Cleaning...",
  ];

  List<String> UpcomingImg = [
    "assets/card1.png",
    "assets/card2.png",
    "assets/card3.png",
  ];

  List<String> UpcomingTitle = [
    "Blog",
    "Video",
    "DIY",
  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(var i = 0; i < 3; i++)
            Container(
              margin: EdgeInsets.all(5),
              // padding: EdgeInsets.all(8),
              height:168 ,
              width: 145,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color.fromRGBO(192, 192, 192, 1),width: 1.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      // Image.asset(UpcomingImg[i]),
                      Container(
                        // height: 85,
                        // width: 124,
                        child: InkWell(
                          onTap: (){},
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),topLeft:Radius.circular(4), ),
                            child: Image.asset(UpcomingImg[i],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(UpcomingTitle[i],
                        style: TextStyle(
                            fontSize:10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(13, 92, 70, 1)
                        ),),
                      SizedBox(width: 10),
                      Icon(Icons.circle,size: 5,color: Colors.yellow,),
                      SizedBox(width: 10),
                      Text("21 FEB,2024",style: TextStyle(
                          fontSize:10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(106, 106, 106, 1)
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(UpcomingText[i],
                      style:TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: Color.fromRGBO(4, 28, 21, 1),
                      ) ,
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