import 'package:accomplisher/ui/screens/accomplished_screen.dart';
import 'package:accomplisher/ui/screens/goal_screen.dart';
import 'package:accomplisher/ui/screens/new_goal_screen.dart';
import 'package:accomplisher/ui/screens/settings_screen.dart';
import 'package:accomplisher/ui/screens/splash_screen.dart';
import 'package:accomplisher/ui/colors.dart';
import 'package:accomplisher/strings.dart';
import 'package:flutter/material.dart';

void main() => runApp(new GoalAchiever());

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}

class GoalAchiever extends StatelessWidget {

  final Map<String, Widget> coreRoutes = {
    GoalScreen.routeName : new GoalScreen(),
    AccomplishedScreen.routeName : new AccomplishedScreen(),
    SettingsScreen.routeName : new SettingsScreen(),
    NewGoalScreen.routeName : new NewGoalScreen()
  };

 @override
 Widget build(BuildContext context) {
   return new MaterialApp(
     title: Strings.get().appName,
    //  theme: AColors.mainTheme,
     initialRoute: SplashScreen.routeName,
     home: SplashScreen(),
    //  routes: routes,
     onGenerateRoute: (RouteSettings settings) {
       return new MyCustomRoute(
         builder: (_) => coreRoutes[settings.name],
         settings: settings
       );
     }
   );
 } 
}
