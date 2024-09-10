import 'package:flutter/material.dart';
import 'package:taskapps/screen/task/home_screen.dart';

import 'screen/onboarding/email_verifaction.dart';
import 'screen/onboarding/login.dart';
import 'screen/onboarding/pin_verifaction.dart';
import 'screen/onboarding/regestion_screen.dart';
import 'screen/onboarding/set_password.dart';
import 'screen/task/stak_create_screen.dart';
import 'uitility/uitils.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token= await ReadUserData('token');
  if(token==null){
    runApp( MyApp("/login"));
  }
  else{
    runApp( MyApp("/"));
  }
}

class MyApp extends StatelessWidget {
  final String FirstRoute;
  MyApp(this.FirstRoute);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Manager",
      initialRoute: FirstRoute,
      routes: {
        '/':(context)=> homeScreen(),
        '/login':(context)=> loginScreen(),
        '/registration':(context)=> registrationScreen(),
        '/emailVerification':(context)=> emailVerificationScreen(),
        '/pinVerification':(context)=> pinVerificationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),
        '/taskCreate':(context)=> taskCreateScreen()
      },
    );
  }
}