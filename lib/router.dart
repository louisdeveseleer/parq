import 'package:flutter/material.dart';
import 'package:parq/follow_up_questions/fuq_main_screen.dart';
import 'package:parq/general_health_questions/ghq_follow_up.dart';
import 'package:parq/general_health_questions/ghq_main_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parq/results/clearance.dart';
import 'package:parq/results/no_clearance.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case GHQMainScreen.id:
      return PageTransition(
        child: GHQMainScreen(),
        type: PageTransitionType.fade,
      );

    case Clearance.id:
      return PageTransition(
        child: Clearance(),
        type: PageTransitionType.fade,
      );

    case NoClearance.id:
      return PageTransition(
        child: NoClearance(),
        type: PageTransitionType.fade,
      );

    case GHQFollowUp.id:
      return PageTransition(
        child: GHQFollowUp(),
        type: PageTransitionType.fade,
      );

    case FUQMainScreen.id:
      return PageTransition(
        child: FUQMainScreen(),
        type: PageTransitionType.fade,
      );

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
