
import 'package:flutter/material.dart';

class CommunityWidget extends StatelessWidget {
  List<String> UpcomingText = [
    "Composting and organic waste management workshop",
    "Community clean-up initiative for locals",
    "Composting and organic waste management workshop",
  ];

  List<String> UpcomingImg = [
    "assets/card1.png",
    "assets/card2.png",
    "assets/card3.png",
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
              padding: EdgeInsets.all(8),
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
                      Container(
                        height: 89,
                        width: 129,
                        child: InkWell(
                          onTap: (){},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1),
                            child: Image.asset(UpcomingImg[i]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(UpcomingText[i],
                    style:TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color.fromRGBO(47, 47, 47, 1),
                    ) ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.calendar_month,size:14,color: Colors.yellow,),
                      Text("5th April",style: TextStyle(
                        fontSize:10,
                      ),),
                      SizedBox(width: 20),
                      Icon(Icons.alarm,size:14,color: Colors.yellow,),
                      Text("12 noon",style: TextStyle(
                        fontSize:10,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}