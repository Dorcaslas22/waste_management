import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waste_management/screens/schedule_pickup.dart';
import 'package:waste_management/screens/schedule_pickup_2.dart';

class PayCard extends StatefulWidget {
  const PayCard({super.key});

  @override
  State<PayCard> createState() => _PayCardState();
}

class _PayCardState extends State<PayCard> {
  final _textformfield = GlobalKey<FormState>();
  final cardNController = TextEditingController();
  final expiryController = TextEditingController();
  final cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule Waste Pickup"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SchedulePickup(),
                  ));
            },
                icon: Icon(Icons.close)),
            Container(
              width: 370,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                  // color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
              ),
              child: Form(
                key: _textformfield,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("Pay with Card",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(4, 28, 21, 1),
                        ),
                  ),
                     SizedBox(height: 30),
                      TextFormField(
                    keyboardType: TextInputType.number,
                    controller: cardNController,
                    decoration: InputDecoration(
                      labelText: "Card Number",
                      hintText: "000 0000 0000 00",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: expiryController,
                                  decoration: InputDecoration(
                                    labelText: "Expiry Date",
                                    hintText: "MM/YY",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: cvvController,
                                decoration: InputDecoration(
                                  labelText: "CVV",
                                  hintText: "123",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 250),
                        Container(
                          padding: EdgeInsets.all(15,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  color:Color.fromRGBO(13, 92, 70, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  onPressed: ()  {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SchedulePickup2(),
                                        ));
                                  },
        
        
                                  child: const Padding(padding: EdgeInsets.all(10),
                                    child: Text("Save ",
                                      style: TextStyle(
                                        color:Color.fromRGBO(255, 255, 255, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                  ),
                )
            ),
            ),
          ],
        ),
      ),
    );
  }
}
