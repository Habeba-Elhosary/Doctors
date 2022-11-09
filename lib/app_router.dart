import 'package:flutter/material.dart';
import 'UI/FirstScreen.dart';
import 'UI/SecondScreen.dart';
import 'constants/strings.dart';


class AppRouter {

  Route ? generateRoute  (RouteSettings settings){
    switch(settings.name) {
      case firstScreen :
        return MaterialPageRoute(builder:(_) => const FirstScreen());

      case secondScreen :
      return MaterialPageRoute(builder:(_) => const SecondScreen());

    }
    return null;
  }
}