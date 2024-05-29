

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image1.png"),
              ),
              color: Color.fromRGBO(13, 92, 70, 1),
            ),
            // color: Color.fromRGBO(13, 92, 70, 1),
            child: Column(
              children: [
                SizedBox(height: 40), // Adjust the top padding as needed
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/Dorcas.jpg'),
                ),
                
                SizedBox(height: 8),
                Text(
                  'Jane Doe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '+234 9123456789',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20), // Adjust the bottom padding as needed
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                children: [
                  ProfileListItem(
                    assetPath: 'assets/profile.png',
                    text: 'Edit profile',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    assetPath: 'assets/payments.png',
                    text: 'Payments',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    assetPath: 'assets/activities.png',
                    text: 'My activities',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    assetPath: 'assets/Settings.png',
                    text: 'Settings',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    assetPath: 'assets/hel.png',
                    text: 'Help center',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    assetPath: 'assets/legal.png',
                    text: 'Legal',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    assetPath: 'assets/refer.png',
                    text: 'Refer and earn',
                    onTap: () {},
                  ),
                  ProfileListItem(
                    assetPath: 'assets/log.png',
                    text: 'Logout',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final String assetPath;
  final String text;
  final VoidCallback onTap;

  ProfileListItem({required this.assetPath, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Image.asset(assetPath, width: 24, height: 24), // Adjust the size as needed
        title: Text(text,style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color.fromRGBO(47, 47, 47, 1),
        ),),
        trailing: Icon(Icons.arrow_forward_ios,  color: Color.fromRGBO(109, 109, 109, 1),size: 20,),
        onTap: onTap,
      ),
    );
  }
}