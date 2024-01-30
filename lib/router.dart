
import 'package:flutter/material.dart';
import 'package:hobanovel/features/home/screen/home_screen.dart';
import 'package:hobanovel/features/profile/screen/profile_screen.dart';
import 'package:hobanovel/features/bookshelf/screen/bookshelf_screen.dart';
import 'package:hobanovel/features/notification/screen/notification_screen.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch(routeSettings.name) {
    case BookshelfScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BookshelfScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case NotificationScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const NotificationScreen(),
      );
    case ProfileScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProfileScreen(),
      );
    case NovelDetailScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const NovelDetailScreen(),
      );
    
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
} 