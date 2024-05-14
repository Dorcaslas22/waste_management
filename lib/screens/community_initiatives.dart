import 'package:flutter/material.dart';
import 'package:waste_management/widgets/community_widget.dart';
import 'package:waste_management/widgets/initiatives.dart';

import '../widgets/all.dart';

class CommunityInitiatives extends StatefulWidget {
  const CommunityInitiatives({super.key});

  @override
  State<CommunityInitiatives> createState() => _CommunityInitiativesState();
}

class _CommunityInitiativesState extends State<CommunityInitiatives> {

  int _buttonIndex = 0;
  final _allCommunityWidgets =[
    // All Widget
    All(),
    // Blog Widget(),
    Container(),
    // Video Widget(),
    Container(),
    // DIY Widget(),
    Container(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        title: Text("Community Initiatives", style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(4, 28, 21, 1),
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 8,left: 16,right: 8,bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(190, 190, 190, 1),
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon: Icon(Icons.search,
                    color: Color.fromRGBO(106, 106, 106, 1),
                  ),
                  suffixIcon: Icon(Icons.filter_list_sharp,
                    color: Color.fromRGBO(13, 92, 70, 1),
                  ),
                  hintText: "Search initiatives",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(106, 106, 106, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                // border: Border.symmetric(horizontal: BorderSide.none),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0
                            ? Color.fromRGBO(13, 92, 70, 1)
                            :Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("All",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: _buttonIndex == 0
                            ? Color.fromRGBO(255, 255, 255, 1)
                            :Color.fromRGBO(47, 47, 47, 1),
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1
                            ? Color.fromRGBO(13, 92, 70, 1)
                            :Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Popular",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: _buttonIndex == 1
                            ? Color.fromRGBO(255, 255, 255, 1)
                            :Color.fromRGBO(47, 47, 47, 1),
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2
                            ? Color.fromRGBO(13, 92, 70, 1)
                            :Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Near me",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: _buttonIndex == 2
                            ? Color.fromRGBO(255, 255, 255, 1)
                            :Color.fromRGBO(47, 47, 47, 1),
                      ),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 3;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 3
                            ? Color.fromRGBO(13, 92, 70, 1)
                            :Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Latest",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: _buttonIndex == 3
                            ? Color.fromRGBO(255, 255, 255, 1)
                            :Color.fromRGBO(47, 47, 47, 1),
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(
              thickness: 0.05,
              color: Color.fromRGBO(47, 47, 47, 1),
              indent: 1,
              endIndent: 0.5,
            ),
            SizedBox(height: 10),
            Initiatives(),
          ],
        ),
      ),
    );
  }
}
