import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waste_management/screens/waste_screen/pay_card.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {

  int _type = 1;
  void _handleRadio(Object ? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                // SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PayCard(),
                        ));
                  },
                  child: Container(
                    width: 342,
                    height: 52,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 255, 255, 1),
                      shape: BoxShape.rectangle,
                      border: _type == 1? Border.all(
                        width: 0.3,color:Color.fromRGBO(13, 92, 70, 1),)
                          :Border.all(width: 0.3,color: Color.fromRGBO(241, 255, 255, 1),
                      ),
                      borderRadius: BorderRadius.circular(4),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/cardm.png",fit: BoxFit.cover,),
                                  SizedBox(width: 10),
                                  Text("Pay with card",
                                    style: _type == 1? TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(47, 47, 47, 1),)
                                        :TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(106, 106, 106, 1),
                                    ),
                                    ),
                                ],
                              ),
                            ),
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: Color.fromRGBO(13, 92, 70, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 342,
                  height: 52,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 255, 255, 1),
                    shape: BoxShape.rectangle,
                    border: _type == 2? Border.all(
                      width: 0.3,color:Color.fromRGBO(13, 92, 70, 1),)
                        :Border.all(width: 0.3,color: Color.fromRGBO(241, 255, 255, 1),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/cash.png",fit: BoxFit.cover,),
                                SizedBox(width: 10),
                                Text("Pay with cash on pickup",
                                  style: _type == 2? TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color.fromRGBO(47, 47, 47, 1),)
                                      :TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color.fromRGBO(106, 106, 106, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Radio(
                            value: 2,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Color.fromRGBO(13, 92, 70, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
