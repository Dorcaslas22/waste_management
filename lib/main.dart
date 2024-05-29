import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:waste_management/data/respositories.authentication/authentication_respository.dart';
import 'package:waste_management/firebase_options.dart';
import 'package:waste_management/login_screen/otp_screen.dart';
import 'package:waste_management/onboarding/onboardingscreens.dart';
import 'package:waste_management/onboarding/screen_onboarding.dart';
import 'package:waste_management/onboarding/welcome.dart';
import 'package:waste_management/screens/explore_screens/community_initiatives.dart';
import 'package:waste_management/screens/profile_view.dart';
import 'package:waste_management/screens/recycle_screen/drop_down.dart';
import 'package:waste_management/screens/home_view.dart';
import 'package:waste_management/screens/explore_screens/learning_screen.dart';
import 'package:waste_management/screens/waste_screen/pay_card.dart';
import 'package:waste_management/screens/recycle_screen/recycle_schedule_pickup.dart';
import 'package:waste_management/screens/recycle_screen/recycle_view_screen.dart';
import 'package:waste_management/screens/waste_screen/schedule_pickup.dart';
import 'package:waste_management/screens/recycle_screen/schedule_pickup_2.dart';
import 'package:waste_management/screens/recycle_screen/schedule_pickup_screen.dart';
import 'package:waste_management/screens/recycle_screen/schedule_screen.dart';
import 'package:waste_management/screens/splashs_screen.dart';
import 'package:waste_management/screens/theme.dart';
import 'package:waste_management/screens/track_recycle_pickup_screen.dart';
import 'package:waste_management/screens/waste_screen/waste_dropoff.dart';
import 'package:waste_management/signup_screen/add_address_screen.dart';
import 'package:waste_management/signup_screen/formscreen.dart';
import 'package:waste_management/login_screen/login.dart';
import 'package:waste_management/signup_screen/register.dart';
import 'package:waste_management/signup_screen/successful_screen.dart';
import 'package:waste_management/widgets/home_screen.dart';
import 'login_screen/forgot.dart';
 void main() async {
   await GetStorage.init();

   // FlutterNativeSplash.preserve(widgetsBinding:widgetsBinding);

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  ).then((FirebaseApp value) => Get.put(AuthenticationRespository()),
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   var auth =FirebaseAuth.instance;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.light,
      home: FormScreen(),
      //  home: auth.currentUser != null? HomeScreen(): Login(),
     );
  }
}






// Windows keytool -list -v -keystore "C:\Users\Dorcas\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android
